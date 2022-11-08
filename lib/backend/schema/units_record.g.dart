// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'units_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UnitsRecord> _$unitsRecordSerializer = new _$UnitsRecordSerializer();

class _$UnitsRecordSerializer implements StructuredSerializer<UnitsRecord> {
  @override
  final Iterable<Type> types = const [UnitsRecord, _$UnitsRecord];
  @override
  final String wireName = 'UnitsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UnitsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.unitName;
    if (value != null) {
      result
        ..add('unitName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  UnitsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UnitsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'unitName':
          result.unitName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$UnitsRecord extends UnitsRecord {
  @override
  final String? unitName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UnitsRecord([void Function(UnitsRecordBuilder)? updates]) =>
      (new UnitsRecordBuilder()..update(updates))._build();

  _$UnitsRecord._({this.unitName, this.ffRef}) : super._();

  @override
  UnitsRecord rebuild(void Function(UnitsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnitsRecordBuilder toBuilder() => new UnitsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnitsRecord &&
        unitName == other.unitName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, unitName.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UnitsRecord')
          ..add('unitName', unitName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UnitsRecordBuilder implements Builder<UnitsRecord, UnitsRecordBuilder> {
  _$UnitsRecord? _$v;

  String? _unitName;
  String? get unitName => _$this._unitName;
  set unitName(String? unitName) => _$this._unitName = unitName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UnitsRecordBuilder() {
    UnitsRecord._initializeBuilder(this);
  }

  UnitsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unitName = $v.unitName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnitsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnitsRecord;
  }

  @override
  void update(void Function(UnitsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnitsRecord build() => _build();

  _$UnitsRecord _build() {
    final _$result =
        _$v ?? new _$UnitsRecord._(unitName: unitName, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
