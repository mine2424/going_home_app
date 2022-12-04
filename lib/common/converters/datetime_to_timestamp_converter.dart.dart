// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:cloud_firestore/cloud_firestore.dart';

class DatetimeTimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const DatetimeTimestampConverter();

  @override
  DateTime fromJson(Timestamp value) => value.toDate();

  @override
  Timestamp toJson(DateTime object) => Timestamp.fromDate(object);
}

class NullableDatetimeTimestampConverter
    implements JsonConverter<DateTime?, Timestamp?> {
  const NullableDatetimeTimestampConverter();

  @override
  DateTime? fromJson(Timestamp? value) => value?.toDate();

  @override
  Timestamp? toJson(DateTime? object) =>
      object == null ? null : Timestamp?.fromDate(object);
}
