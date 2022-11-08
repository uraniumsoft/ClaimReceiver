import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'claimstatus_record.g.dart';

abstract class ClaimstatusRecord
    implements Built<ClaimstatusRecord, ClaimstatusRecordBuilder> {
  static Serializer<ClaimstatusRecord> get serializer =>
      _$claimstatusRecordSerializer;

  int? get statusOrder;

  String? get statusName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ClaimstatusRecordBuilder builder) => builder
    ..statusOrder = 0
    ..statusName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('claimstatus');

  static Stream<ClaimstatusRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ClaimstatusRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ClaimstatusRecord._();
  factory ClaimstatusRecord([void Function(ClaimstatusRecordBuilder) updates]) =
      _$ClaimstatusRecord;

  static ClaimstatusRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createClaimstatusRecordData({
  int? statusOrder,
  String? statusName,
}) {
  final firestoreData = serializers.toFirestore(
    ClaimstatusRecord.serializer,
    ClaimstatusRecord(
      (c) => c
        ..statusOrder = statusOrder
        ..statusName = statusName,
    ),
  );

  return firestoreData;
}
