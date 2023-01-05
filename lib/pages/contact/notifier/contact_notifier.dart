import 'package:going_home_app/common/packages/ulid.dart';
import 'package:going_home_app/domain/contact/contact_repository.dart';
import 'package:going_home_app/domain/contact/enums/notify_area.dart';
import 'package:going_home_app/domain/contact/models/contact.dart';
import 'package:going_home_app/domain/contact_location/models/contact_location.dart';
import 'package:going_home_app/domain/user/models/user.dart';
import 'package:going_home_app/pages/auth/notifier/auth_notifier.dart';
import 'package:going_home_app/pages/contact/state/contact_state.dart';
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

  Future<void> init() async {
    // this is production code //
    // await getMyContactList();

    // this is mock data //
    state = const AsyncValue.data(
      ContactState(
        contacts: [
          Contact(
            contactId: 'test',
            isFavorite: true,
            contactName: 'test',
            word: 'test',
            notifyArea: NotifyArea.near,
            users: [
              User(
                uid: 'AhzTGWGp6QBOBkHDUFJukZBrZwQT',
                name: 'asdf',
                contactIds: [],
              ),
              User(
                uid: 'test2',
                name: 'ttdd',
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

  String getContactName(Contact contact) {
    final myUid = _authNotifier.uid;
    return contact.users.firstWhere((element) => element.uid != myUid).name;
  }

  Future<void> getMyContactList() async {
    state = const AsyncValue.loading();
    try {
      final user = await _authNotifier.getUser();
      final contacts = await _contactRepository.getMyContacts(user.contactIds);

      state = AsyncValue.data(ContactState(contacts: contacts));
    } catch (e) {
      print(e);
    }
  }

  Future<void> addContactUser({
    required bool isFavorite,
    required String word,
    required NotifyArea notifyArea,
    required User contactUser,
    required ContactLocation goalLocation,
  }) async {
    state = const AsyncValue.loading();
    try {
      final myselfUser = await _authNotifier.getUser();
      final contact = Contact(
          contactId: Ulid().toUuid(),
          contactName: contactUser.name,
          word: word,
          currentGoalLocation: goalLocation,
          goalLocationList: [goalLocation],
          isFavorite: isFavorite,
          notifyArea: notifyArea,
          users: [myselfUser, contactUser],
          updatedAt: DateTime.now(),
          createdAt: DateTime.now());

      await _contactRepository.addContact(contact);
    } catch (e) {
      print(e);
    }
  }
}
