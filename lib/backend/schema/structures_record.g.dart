// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structures_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StructuresRecord> _$structuresRecordSerializer =
    new _$StructuresRecordSerializer();

class _$StructuresRecordSerializer
    implements StructuredSerializer<StructuresRecord> {
  @override
  final Iterable<Type> types = const [StructuresRecord, _$StructuresRecord];
  @override
  final String wireName = 'StructuresRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, StructuresRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.partName;
    if (value != null) {
      result
        ..add('partName')
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
  StructuresRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StructuresRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'partName':
          result.partName = serializers.deserialize(value,
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

class _$StructuresRecord extends StructuresRecord {
  @override
  final String? partName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StructuresRecord(
          [void Function(StructuresRecordBuilder)? updates]) =>
      (new StructuresRecordBuilder()..update(updates))._build();

  _$StructuresRecord._({this.partName, this.ffRef}) : super._();

  @override
  StructuresRecord rebuild(void Function(StructuresRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StructuresRecordBuilder toBuilder() =>
      new StructuresRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StructuresRecord &&
        partName == other.partName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, partName.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StructuresRecord')
          ..add('partName', partName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StructuresRecordBuilder
    implements Builder<StructuresRecord, StructuresRecordBuilder> {
  _$StructuresRecord? _$v;

  String? _partName;
  String? get partName => _$this._partName;
  set partName(String? partName) => _$this._partName = partName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StructuresRecordBuilder() {
    StructuresRecord._initializeBuilder(this);
  }

  StructuresRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _partName = $v.partName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StructuresRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StructuresRecord;
  }

  @override
  void update(void Function(StructuresRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StructuresRecord build() => _build();

  _$StructuresRecord _build() {
    final _$result =
        _$v ?? new _$StructuresRecord._(partName: partName, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
