import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'claims_record.g.dart';

abstract class ClaimsRecord
    implements Built<ClaimsRecord, ClaimsRecordBuilder> {
  static Serializer<ClaimsRecord> get serializer => _$claimsRecordSerializer;

  LatLng? get addresslatlong;

  @BuiltValueField(wireName: 'cause_of_loss')
  String? get causeOfLoss;

  String? get companyName;

  DateTime? get dateincident;

  String? get description;

  String? get email;

  @BuiltValueField(wireName: 'estimate_total')
  double? get estimateTotal;

  String? get firstname;

  String? get lastname;

  String? get policyno;

  String? get propaddress;

  int? get statusOrder;

  @BuiltValueField(wireName: 'claim_no')
  String? get claimNo;

  DateTime? get submittedDate;

  String? get taxID;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ClaimsRecordBuilder builder) => builder
    ..causeOfLoss = ''
    ..companyName = ''
    ..description = ''
    ..email = ''
    ..estimateTotal = 0.0
    ..firstname = ''
    ..lastname = ''
    ..policyno = ''
    ..propaddress = ''
    ..statusOrder = 0
    ..claimNo = ''
    ..taxID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('claims');

  static Stream<ClaimsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ClaimsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ClaimsRecord._();
  factory ClaimsRecord([void Function(ClaimsRecordBuilder) updates]) =
      _$ClaimsRecord;

  static ClaimsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createClaimsRecordData({
  LatLng? addresslatlong,
  String? causeOfLoss,
  String? companyName,
  DateTime? dateincident,
  String? description,
  String? email,
  double? estimateTotal,
  String? firstname,
  String? lastname,
  String? policyno,
  String? propaddress,
  int? statusOrder,
  String? claimNo,
  DateTime? submittedDate,
  String? taxID,
}) {
  final firestoreData = serializers.toFirestore(
    ClaimsRecord.serializer,
    ClaimsRecord(
      (c) => c
        ..addresslatlong = addresslatlong
        ..causeOfLoss = causeOfLoss
        ..companyName = companyName
        ..dateincident = dateincident
        ..description = description
        ..email = email
        ..estimateTotal = estimateTotal
        ..firstname = firstname
        ..lastname = lastname
        ..policyno = policyno
        ..propaddress = propaddress
        ..statusOrder = statusOrder
        ..claimNo = claimNo
        ..submittedDate = submittedDate
        ..taxID = taxID,
    ),
  );

  return firestoreData;
}
