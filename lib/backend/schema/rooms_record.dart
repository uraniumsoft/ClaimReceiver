import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rooms_record.g.dart';

abstract class RoomsRecord implements Built<RoomsRecord, RoomsRecordBuilder> {
  static Serializer<RoomsRecord> get serializer => _$roomsRecordSerializer;

  String? get roomName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RoomsRecordBuilder builder) =>
      builder..roomName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rooms');

  static Stream<RoomsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RoomsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RoomsRecord._();
  factory RoomsRecord([void Function(RoomsRecordBuilder) updates]) =
      _$RoomsRecord;

  static RoomsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRoomsRecordData({
  String? roomName,
}) {
  final firestoreData = serializers.toFirestore(
    RoomsRecord.serializer,
    RoomsRecord(
      (r) => r..roomName = roomName,
    ),
  );

  return firestoreData;
}
