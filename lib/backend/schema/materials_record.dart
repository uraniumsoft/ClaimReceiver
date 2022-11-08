import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'materials_record.g.dart';

abstract class MaterialsRecord
    implements Built<MaterialsRecord, MaterialsRecordBuilder> {
  static Serializer<MaterialsRecord> get serializer =>
      _$materialsRecordSerializer;

  String? get matName;

  DocumentReference? get structureRef;

  double? get unitPrice;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MaterialsRecordBuilder builder) => builder
    ..matName = ''
    ..unitPrice = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('materials');

  static Stream<MaterialsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MaterialsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MaterialsRecord._();
  factory MaterialsRecord([void Function(MaterialsRecordBuilder) updates]) =
      _$MaterialsRecord;

  static MaterialsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMaterialsRecordData({
  String? matName,
  DocumentReference? structureRef,
  double? unitPrice,
}) {
  final firestoreData = serializers.toFirestore(
    MaterialsRecord.serializer,
    MaterialsRecord(
      (m) => m
        ..matName = matName
        ..structureRef = structureRef
        ..unitPrice = unitPrice,
    ),
  );

  return firestoreData;
}
