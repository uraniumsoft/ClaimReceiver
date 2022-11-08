import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'units_record.g.dart';

abstract class UnitsRecord implements Built<UnitsRecord, UnitsRecordBuilder> {
  static Serializer<UnitsRecord> get serializer => _$unitsRecordSerializer;

  String? get unitName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UnitsRecordBuilder builder) =>
      builder..unitName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('units');

  static Stream<UnitsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UnitsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UnitsRecord._();
  factory UnitsRecord([void Function(UnitsRecordBuilder) updates]) =
      _$UnitsRecord;

  static UnitsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUnitsRecordData({
  String? unitName,
}) {
  final firestoreData = serializers.toFirestore(
    UnitsRecord.serializer,
    UnitsRecord(
      (u) => u..unitName = unitName,
    ),
  );

  return firestoreData;
}
