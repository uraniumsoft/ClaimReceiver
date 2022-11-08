import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'structures_record.g.dart';

abstract class StructuresRecord
    implements Built<StructuresRecord, StructuresRecordBuilder> {
  static Serializer<StructuresRecord> get serializer =>
      _$structuresRecordSerializer;

  String? get partName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StructuresRecordBuilder builder) =>
      builder..partName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('structures');

  static Stream<StructuresRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StructuresRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StructuresRecord._();
  factory StructuresRecord([void Function(StructuresRecordBuilder) updates]) =
      _$StructuresRecord;

  static StructuresRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStructuresRecordData({
  String? partName,
}) {
  final firestoreData = serializers.toFirestore(
    StructuresRecord.serializer,
    StructuresRecord(
      (s) => s..partName = partName,
    ),
  );

  return firestoreData;
}
