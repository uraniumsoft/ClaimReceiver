// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claimstatus_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClaimstatusRecord> _$claimstatusRecordSerializer =
    new _$ClaimstatusRecordSerializer();

class _$ClaimstatusRecordSerializer
    implements StructuredSerializer<ClaimstatusRecord> {
  @override
  final Iterable<Type> types = const [ClaimstatusRecord, _$ClaimstatusRecord];
  @override
  final String wireName = 'ClaimstatusRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ClaimstatusRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.statusOrder;
    if (value != null) {
      result
        ..add('statusOrder')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.statusName;
    if (value != null) {
      result
        ..add('statusName')
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
  ClaimstatusRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClaimstatusRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'statusOrder':
          result.statusOrder = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'statusName':
          result.statusName = serializers.deserialize(value,
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

class _$ClaimstatusRecord extends ClaimstatusRecord {
  @override
  final int? statusOrder;
  @override
  final String? statusName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ClaimstatusRecord(
          [void Function(ClaimstatusRecordBuilder)? updates]) =>
      (new ClaimstatusRecordBuilder()..update(updates))._build();

  _$ClaimstatusRecord._({this.statusOrder, this.statusName, this.ffRef})
      : super._();

  @override
  ClaimstatusRecord rebuild(void Function(ClaimstatusRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimstatusRecordBuilder toBuilder() =>
      new ClaimstatusRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClaimstatusRecord &&
        statusOrder == other.statusOrder &&
        statusName == other.statusName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, statusOrder.hashCode), statusName.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClaimstatusRecord')
          ..add('statusOrder', statusOrder)
          ..add('statusName', statusName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ClaimstatusRecordBuilder
    implements Builder<ClaimstatusRecord, ClaimstatusRecordBuilder> {
  _$ClaimstatusRecord? _$v;

  int? _statusOrder;
  int? get statusOrder => _$this._statusOrder;
  set statusOrder(int? statusOrder) => _$this._statusOrder = statusOrder;

  String? _statusName;
  String? get statusName => _$this._statusName;
  set statusName(String? statusName) => _$this._statusName = statusName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ClaimstatusRecordBuilder() {
    ClaimstatusRecord._initializeBuilder(this);
  }

  ClaimstatusRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _statusOrder = $v.statusOrder;
      _statusName = $v.statusName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClaimstatusRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClaimstatusRecord;
  }

  @override
  void update(void Function(ClaimstatusRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClaimstatusRecord build() => _build();

  _$ClaimstatusRecord _build() {
    final _$result = _$v ??
        new _$ClaimstatusRecord._(
            statusOrder: statusOrder, statusName: statusName, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
