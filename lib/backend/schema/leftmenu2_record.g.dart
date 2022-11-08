// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leftmenu2_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Leftmenu2Record> _$leftmenu2RecordSerializer =
    new _$Leftmenu2RecordSerializer();

class _$Leftmenu2RecordSerializer
    implements StructuredSerializer<Leftmenu2Record> {
  @override
  final Iterable<Type> types = const [Leftmenu2Record, _$Leftmenu2Record];
  @override
  final String wireName = 'Leftmenu2Record';

  @override
  Iterable<Object?> serialize(Serializers serializers, Leftmenu2Record object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.menuOrder;
    if (value != null) {
      result
        ..add('menuOrder')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  Leftmenu2Record deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Leftmenu2RecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'menuOrder':
          result.menuOrder = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$Leftmenu2Record extends Leftmenu2Record {
  @override
  final String? name;
  @override
  final int? menuOrder;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$Leftmenu2Record([void Function(Leftmenu2RecordBuilder)? updates]) =>
      (new Leftmenu2RecordBuilder()..update(updates))._build();

  _$Leftmenu2Record._({this.name, this.menuOrder, this.ffRef}) : super._();

  @override
  Leftmenu2Record rebuild(void Function(Leftmenu2RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Leftmenu2RecordBuilder toBuilder() =>
      new Leftmenu2RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Leftmenu2Record &&
        name == other.name &&
        menuOrder == other.menuOrder &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), menuOrder.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Leftmenu2Record')
          ..add('name', name)
          ..add('menuOrder', menuOrder)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class Leftmenu2RecordBuilder
    implements Builder<Leftmenu2Record, Leftmenu2RecordBuilder> {
  _$Leftmenu2Record? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _menuOrder;
  int? get menuOrder => _$this._menuOrder;
  set menuOrder(int? menuOrder) => _$this._menuOrder = menuOrder;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  Leftmenu2RecordBuilder() {
    Leftmenu2Record._initializeBuilder(this);
  }

  Leftmenu2RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _menuOrder = $v.menuOrder;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Leftmenu2Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Leftmenu2Record;
  }

  @override
  void update(void Function(Leftmenu2RecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Leftmenu2Record build() => _build();

  _$Leftmenu2Record _build() {
    final _$result = _$v ??
        new _$Leftmenu2Record._(name: name, menuOrder: menuOrder, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
