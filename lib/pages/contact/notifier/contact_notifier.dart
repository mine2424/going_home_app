import 'dart:io';

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
  final wordController = TextEditingController(text: '今から帰ります');

  String get myUid => _authNotifier.uid;

  Future<void> init() async {
    // this is production code //
    await getMyContactList();

    // this is mock data //
    // addMock();
  }

  void addMock() {
    state = const AsyncValue.data(
      ContactState(
        contacts: [
          Contact(
            contactId: 'test',
            isFavorite: true,
            contactName: 'お母さん',
            word: '今から帰ります',
            notifyArea: NotifyArea.near,
            users: [
              User(
                uid: 'AhzTGWGp6QBOBkHDUFJukZBrZwQT',
                name: 'お母さん',
                contactIds: [],
              ),
              User(
                uid: 'test2',
                name: 'お母さん',
                contactIds: [],
              )
            ],
            currentGoalLocation: ContactLocation(latitude: 32, longitude: 45),
          ),
          Contact(
            contactId: 'test2',
            isFavorite: false,
            contactName: 'お父さん',
            word: 'test',
            notifyArea: NotifyArea.near,
            users: [
              User(
                uid: 'AhzTGWGp6QBOBkHDUFJukZBrZwQT',
                name: 'お父さん',
                contactIds: [],
              ),
              User(
                uid: 'test2',
                name: 'お父さん',
                contactIds: [],
              )
            ],
            currentGoalLocation: ContactLocation(latitude: 32, longitude: 45),
          )
        ],
      ),
    );
  }

  void setLoading(bool isLoading) {
    state = const AsyncValue.loading();
  }

  void setIsFavorite() {
    final stat = state.asData?.value ?? const ContactState();
    if (stat == const ContactState()) {
      return;
    }
    state = AsyncValue.data(
      stat.copyWith(isFavorite: !state.asData!.value.isFavorite),
    );
  }

  Future<void> updateIsFavorite() async {
    final stat = state.asData?.value ?? const ContactState();
    if (stat == const ContactState()) {
      return;
    }
    final newContact =
        stat.selectedContact.copyWith(isFavorite: !stat.isFavorite);
    await updateContact(newContact);
  }

  void changeNotifyArea(CoolDropdownItem val) {
    final area = const NotifyAreaConverter().fromJson(val.value!);
    state = AsyncValue.data(state.asData!.value.copyWith(notifyArea: area));
  }

  Future<void> updateWord() async {
    final stat = state.asData?.value ?? const ContactState();
    if (stat == const ContactState()) {
      return;
    }
    final newContact = stat.selectedContact.copyWith(word: wordController.text);
    await updateContact(newContact);
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

  void setSelectedContact(Contact contact) {
    state = AsyncValue.data(
      state.asData!.value.copyWith(selectedContact: contact),
    );
  }

  Future<void> searchContactUser(String val) async {
    final newState = state.asData?.value ?? const ContactState();
    try {
      // uidで検索してヒットした場合はそのユーザーを返す
      final userByUid = await _contactRepository.searchContactUserByUid(val);
      if (userByUid != const User()) {
        state = AsyncValue.data(newState.copyWith(searchedUsers: [userByUid]));
        return;
      }

      // uidで検索してヒットしなかった場合はnameで検索する
      final usersByName = await _contactRepository.searchContactUserByName(val);
      state = AsyncValue.data(newState.copyWith(searchedUsers: usersByName));
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
    try {
      sleep(const Duration(milliseconds: 200));
      final stat = state.asData?.value ?? const ContactState();
      final user = await _authNotifier.getMyUser();
      final contacts = await _contactRepository.getMyContacts(user.contactIds);

      if (contacts.isEmpty) {
        state = AsyncValue.data(stat);
        return;
      }

      state = AsyncValue.data(stat.copyWith(contacts: contacts));
    } catch (e, s) {
      print(e);
      print(s);
      throw Exception('Failed to get my contact list.');
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
    final stat = state.asData?.value;
    if (stat == null || stat.contactUsers.isEmpty) {
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
        word: wordController.text,
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
      state = AsyncValue.data(
        stat.copyWith(contacts: [...stat.contacts, contact]),
      );
      return true;
    } catch (e, s) {
      print('addContact error: $e, $s');
      throw Exception('Failed to add contact user.');
    }
  }

  Future<void> updateContact(Contact newContact) async {
    final stat = state.asData?.value;
    if (stat == null || stat.selectedContact == const Contact()) {
      return;
    }

    try {
      await _contactRepository.updateContact(newContact);
    } catch (e, s) {
      print('updateContact error: $e \n $s');
      throw Exception('Failed to update contact user.');
    }

    final newStat = ContactState(
      contacts: stat.contacts
          .map(
            (old) => old.contactId == newContact.contactId ? newContact : old,
          )
          .toList(),
    );
    state = AsyncValue.data(newStat);
  }

  Future<void> removeContactUser(String contactId) async {
    try {
      final stat = state.asData?.value ?? const ContactState();

      // myUserからcontactIdを削除
      final myselfUser = await _authNotifier.getMyUserForContact();
      final newMyselfUser = myselfUser.copyWith(
        contactIds: myselfUser.contactIds
            .where((element) => element != stat.deletedContactId)
            .toList(),
      );
      await _authNotifier.saveUser(newMyselfUser);

      // 相手のUserからcontactIdを削除
      final otherUid = stat.contactUsers
          .firstWhere((element) => element.uid != myselfUser.uid)
          .uid;
      final otherUser = await _authNotifier.getUser(otherUid);
      final newOtherUser = otherUser.copyWith(
        contactIds: otherUser.contactIds
            .where((element) => element != stat.deletedContactId)
            .toList(),
      );
      await _authNotifier.saveUser(newOtherUser);

      // Contactを削除
      await _contactRepository.removeContactUser(contactId);

      // stateにも反映
      final newContactState = stat.copyWith(
        contacts: stat.contacts
            .where((element) => element.contactId != stat.deletedContactId)
            .toList(),
        deletedContactId: '',
      );
      state = AsyncValue.data(newContactState);
    } catch (e) {
      print(e);
      throw Exception('Failed to remove contact user.');
    }
  }
}
