import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'leftmenu2_record.g.dart';

abstract class Leftmenu2Record
    implements Built<Leftmenu2Record, Leftmenu2RecordBuilder> {
  static Serializer<Leftmenu2Record> get serializer =>
      _$leftmenu2RecordSerializer;

  String? get name;

  int? get menuOrder;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(Leftmenu2RecordBuilder builder) => builder
    ..name = ''
    ..menuOrder = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('leftmenu2');

  static Stream<Leftmenu2Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<Leftmenu2Record> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  Leftmenu2Record._();
  factory Leftmenu2Record([void Function(Leftmenu2RecordBuilder) updates]) =
      _$Leftmenu2Record;

  static Leftmenu2Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLeftmenu2RecordData({
  String? name,
  int? menuOrder,
}) {
  final firestoreData = serializers.toFirestore(
    Leftmenu2Record.serializer,
    Leftmenu2Record(
      (l) => l
        ..name = name
        ..menuOrder = menuOrder,
    ),
  );

  return firestoreData;
}
