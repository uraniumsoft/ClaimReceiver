// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RoomsRecord> _$roomsRecordSerializer = new _$RoomsRecordSerializer();

class _$RoomsRecordSerializer implements StructuredSerializer<RoomsRecord> {
  @override
  final Iterable<Type> types = const [RoomsRecord, _$RoomsRecord];
  @override
  final String wireName = 'RoomsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RoomsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.roomName;
    if (value != null) {
      result
        ..add('roomName')
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
  RoomsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RoomsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'roomName':
          result.roomName = serializers.deserialize(value,
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

class _$RoomsRecord extends RoomsRecord {
  @override
  final String? roomName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RoomsRecord([void Function(RoomsRecordBuilder)? updates]) =>
      (new RoomsRecordBuilder()..update(updates))._build();

  _$RoomsRecord._({this.roomName, this.ffRef}) : super._();

  @override
  RoomsRecord rebuild(void Function(RoomsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoomsRecordBuilder toBuilder() => new RoomsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoomsRecord &&
        roomName == other.roomName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, roomName.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RoomsRecord')
          ..add('roomName', roomName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RoomsRecordBuilder implements Builder<RoomsRecord, RoomsRecordBuilder> {
  _$RoomsRecord? _$v;

  String? _roomName;
  String? get roomName => _$this._roomName;
  set roomName(String? roomName) => _$this._roomName = roomName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RoomsRecordBuilder() {
    RoomsRecord._initializeBuilder(this);
  }

  RoomsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roomName = $v.roomName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RoomsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RoomsRecord;
  }

  @override
  void update(void Function(RoomsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RoomsRecord build() => _build();

  _$RoomsRecord _build() {
    final _$result =
        _$v ?? new _$RoomsRecord._(roomName: roomName, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
