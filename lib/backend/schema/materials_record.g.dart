// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'materials_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MaterialsRecord> _$materialsRecordSerializer =
    new _$MaterialsRecordSerializer();

class _$MaterialsRecordSerializer
    implements StructuredSerializer<MaterialsRecord> {
  @override
  final Iterable<Type> types = const [MaterialsRecord, _$MaterialsRecord];
  @override
  final String wireName = 'MaterialsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MaterialsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.matName;
    if (value != null) {
      result
        ..add('matName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.structureRef;
    if (value != null) {
      result
        ..add('structureRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.unitPrice;
    if (value != null) {
      result
        ..add('unitPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MaterialsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MaterialsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'matName':
          result.matName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'structureRef':
          result.structureRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'unitPrice':
          result.unitPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MaterialsRecord extends MaterialsRecord {
  @override
  final String? matName;
  @override
  final DocumentReference<Object?>? structureRef;
  @override
  final double? unitPrice;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MaterialsRecord([void Function(MaterialsRecordBuilder)? updates]) =>
      (new MaterialsRecordBuilder()..update(updates))._build();

  _$MaterialsRecord._(
      {this.matName, this.structureRef, this.unitPrice, this.ffRef})
      : super._();

  @override
  MaterialsRecord rebuild(void Function(MaterialsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaterialsRecordBuilder toBuilder() =>
      new MaterialsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaterialsRecord &&
        matName == other.matName &&
        structureRef == other.structureRef &&
        unitPrice == other.unitPrice &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, matName.hashCode), structureRef.hashCode),
            unitPrice.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MaterialsRecord')
          ..add('matName', matName)
          ..add('structureRef', structureRef)
          ..add('unitPrice', unitPrice)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MaterialsRecordBuilder
    implements Builder<MaterialsRecord, MaterialsRecordBuilder> {
  _$MaterialsRecord? _$v;

  String? _matName;
  String? get matName => _$this._matName;
  set matName(String? matName) => _$this._matName = matName;

  DocumentReference<Object?>? _structureRef;
  DocumentReference<Object?>? get structureRef => _$this._structureRef;
  set structureRef(DocumentReference<Object?>? structureRef) =>
      _$this._structureRef = structureRef;

  double? _unitPrice;
  double? get unitPrice => _$this._unitPrice;
  set unitPrice(double? unitPrice) => _$this._unitPrice = unitPrice;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MaterialsRecordBuilder() {
    MaterialsRecord._initializeBuilder(this);
  }

  MaterialsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _matName = $v.matName;
      _structureRef = $v.structureRef;
      _unitPrice = $v.unitPrice;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MaterialsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaterialsRecord;
  }

  @override
  void update(void Function(MaterialsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MaterialsRecord build() => _build();

  _$MaterialsRecord _build() {
    final _$result = _$v ??
        new _$MaterialsRecord._(
            matName: matName,
            structureRef: structureRef,
            unitPrice: unitPrice,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
