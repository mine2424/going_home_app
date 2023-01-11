import 'package:flutter/material.dart';
import 'package:going_home_app/common/packages/cool_dropdown/cool_dropdown_item.dart';
import 'package:going_home_app/common/packages/ulid.dart';
import 'package:going_home_app/domain/contact/contact_repository.dart';
import 'package:going_home_app/domain/contact/enums/notify_area.dart';
import 'package:going_home_app/domain/contact/models/contact.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location.dart';
import 'package:going_home_app/domain/user/models/user.dart';
import 'package:going_home_app/pages/auth/notifier/auth_notifier.dart';
import 'package:going_home_app/pages/contact/state/contact_state.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final contactNotifierProvider =
    StateNotifierProvider<ContactNotifier, AsyncValue<ContactState>>(
  (ref) => ContactNotifier(
    ref,
    ref.read(contactRepositoryProvider),
    ref.read(authNotifierProvider.notifier),
  )..init(),
);

class ContactNotifier extends StateNotifier<AsyncValue<ContactState>> {
  ContactNotifier(this._ref, this._contactRepository, this._authNotifier)
      : super(const AsyncValue.loading());

  final Ref _ref;

  final ContactRepository _contactRepository;
  final AuthNotifier _authNotifier;

  final searchUserController = TextEditingController();
  final wordController = TextEditingController();

  String get myUid => _authNotifier.uid;

  Future<void> init() async {
    // this is production code //
    await getMyContactList();

    // this is mock data //
    // state = const AsyncValue.data(
    //   ContactState(
    //     contacts: [
    //       Contact(
    //         contactId: 'test',
    //         isFavorite: true,
    //         contactName: 'test',
    //         word: 'test',
    //         notifyArea: NotifyArea.near,
    //         users: [
    //           User(
    //             uid: 'AhzTGWGp6QBOBkHDUFJukZBrZwQT',
    //             name: 'asdf',
    //             contactIds: [],
    //           ),
    //           User(
    //             uid: 'test2',
    //             name: 'ttdd',
    //             contactIds: [],
    //           )
    //         ],
    //         currentGoalLocation: ContactLocation(latitude: 32, longitude: 45),
    //       )
    //     ],
    //   ),
    // );
  }

  void setLoading(bool isLoading) {
    state = const AsyncValue.loading();
  }

  void changeIsFavorite(bool val) {
    state = AsyncValue.data(
      state.asData!.value.copyWith(isFavorite: val),
    );
  }

  void changeNotifyArea(CoolDropdownItem val) {
    final area = const NotifyAreaConverter().fromJson(val.value!);
    state = AsyncValue.data(state.asData!.value.copyWith(notifyArea: area));
  }

  void setGoalLocation(LatLng latLng) {
    state = AsyncValue.data(
      state.asData!.value.copyWith(
        goalLocation: ContactLocation(
          latitude: latLng.latitude,
          longitude: latLng.longitude,
        ),
      ),
    );
  }

  Future<void> searchContactUser(String val) async {
    state = const AsyncValue.loading();
    try {
      // uidで検索してヒットした場合はそのユーザーを返す
      final userByUid = await _contactRepository.searchContactUserByUid(val);
      if (userByUid != const User()) {
        print(userByUid);
        state = AsyncValue.data(
          state.asData!.value.copyWith(searchedUsers: [userByUid]),
        );
        return;
      }

      // uidで検索してヒットしなかった場合はnameで検索する
      final usersByName = await _contactRepository.searchContactUserByName(val);
      state = AsyncValue.data(
        state.asData!.value.copyWith(searchedUsers: usersByName),
      );
      return;
    } catch (e) {
      print(e);
      throw Exception('Failed to search contact user.');
    }
  }

  String getContactName(Contact contact) {
    final myUid = _authNotifier.uid;
    return contact.users.firstWhere((element) => element.uid != myUid).name;
  }

  Future<void> getMyContactList() async {
    state = const AsyncValue.loading();
    try {
      final user = await _authNotifier.getMyUser();
      final contacts = await _contactRepository.getMyContacts(user.contactIds);
      print('1 contacts: ${contacts.length}');
      if (contacts.isEmpty) {
        state = AsyncValue.data(state.asData?.value ?? const ContactState());
        return;
      }

      state = AsyncValue.data(
        state.asData!.value.copyWith(contacts: contacts),
      );
      print('state contacts: ${state.asData!.value.contacts}');
    } catch (e) {
      print(e);
    }
  }

  void addContactUser(User user) {
    state = AsyncValue.data(
      state.asData!.value.copyWith(
        contactUsers: [...state.asData?.value.contactUsers ?? [], user],
      ),
    );
  }

  Future<bool> addContact() async {
    state = const AsyncValue.loading();

    final stat = state.asData!.value;
    if (stat.contactUsers.isEmpty) {
      return false;
    }

    try {
      final contactId = Ulid().toUuid();
      // contactIDの更新
      state = AsyncValue.data(stat.copyWith(
        contactUsers: stat.contactUsers
            .map((e) => e.copyWith(contactIds: [...e.contactIds, contactId]))
            .toList(),
      ));
      final myselfUser = await _authNotifier.getMyUserForContact();
      final newMyselfUser = myselfUser.copyWith(
        contactIds: [...myselfUser.contactIds, contactId],
      );

      final contact = Contact(
        contactId: contactId,
        // INFO: 複数人になった場合は名前ではなくて、グループ名にする
        contactName: stat.contactUsers.first.name,
        word: stat.word,
        currentGoalLocation: stat.goalLocation,
        goalLocationList: [stat.goalLocation],
        isFavorite: stat.isFavorite,
        notifyArea: stat.notifyArea,
        users: [newMyselfUser, ...stat.contactUsers],
        updatedAt: DateTime.now(),
        createdAt: DateTime.now(),
      );

      await _contactRepository.addContact(contact);
      await _authNotifier.addContactId(contact);
      return true;
    } catch (e) {
      print(e);
      throw Exception('Failed to add contact user.');
    }
  }
}
