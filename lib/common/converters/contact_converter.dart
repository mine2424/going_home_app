import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_home_app/domain/contact/enums/notify_area.dart';
import 'package:going_home_app/domain/contact/models/contact.dart';
import 'package:going_home_app/domain/user/models/user.dart';

export 'package:cloud_firestore/cloud_firestore.dart';

class ContactConverter implements JsonConverter<Contact, Map<String, dynamic>> {
  const ContactConverter();

  @override
  Contact fromJson(Map<String, dynamic> value) {
    return Contact(
      word: value['word'] as String,
      contactId: value['contactId'] as String,
      isMatched: value['isMatched'] as bool,
      isFavorite: value['isFavorite'] as bool,
      notifyArea: value['notifyArea'] as NotifyArea,
      users: value['users'] as List<User>,
      createdAt: value['createdAt'] as DateTime,
      updatedAt: value['updatedAt'] as DateTime,
    );
  }

  @override
  Map<String, dynamic> toJson(Contact object) {
    return <String, dynamic>{
      'word': object.word,
      'contactId': object.contactId,
      'isMatched': object.isMatched,
      'isFavorite': object.isFavorite,
      'notifyArea': object.notifyArea,
      'users': object.users,
      'createdAt': object.createdAt,
      'updatedAt': object.updatedAt,
    };
  }
}
