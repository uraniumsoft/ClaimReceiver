import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'leftmenu_record.g.dart';

abstract class LeftmenuRecord
    implements Built<LeftmenuRecord, LeftmenuRecordBuilder> {
  static Serializer<LeftmenuRecord> get serializer =>
      _$leftmenuRecordSerializer;

  String? get name;

  int? get menuOrder;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LeftmenuRecordBuilder builder) => builder
    ..name = ''
    ..menuOrder = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('leftmenu');

  static Stream<LeftmenuRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LeftmenuRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LeftmenuRecord._();
  factory LeftmenuRecord([void Function(LeftmenuRecordBuilder) updates]) =
      _$LeftmenuRecord;

  static LeftmenuRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLeftmenuRecordData({
  String? name,
  int? menuOrder,
}) {
  final firestoreData = serializers.toFirestore(
    LeftmenuRecord.serializer,
    LeftmenuRecord(
      (l) => l
        ..name = name
        ..menuOrder = menuOrder,
    ),
  );

  return firestoreData;
}
