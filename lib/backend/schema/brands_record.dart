import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'brands_record.g.dart';

abstract class BrandsRecord
    implements Built<BrandsRecord, BrandsRecordBuilder> {
  static Serializer<BrandsRecord> get serializer => _$brandsRecordSerializer;

  String? get brandName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BrandsRecordBuilder builder) =>
      builder..brandName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('brands');

  static Stream<BrandsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BrandsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BrandsRecord._();
  factory BrandsRecord([void Function(BrandsRecordBuilder) updates]) =
      _$BrandsRecord;

  static BrandsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBrandsRecordData({
  String? brandName,
}) {
  final firestoreData = serializers.toFirestore(
    BrandsRecord.serializer,
    BrandsRecord(
      (b) => b..brandName = brandName,
    ),
  );

  return firestoreData;
}
