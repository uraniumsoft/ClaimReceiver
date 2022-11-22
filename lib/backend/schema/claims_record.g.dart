// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claims_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClaimsRecord> _$claimsRecordSerializer =
    new _$ClaimsRecordSerializer();

class _$ClaimsRecordSerializer implements StructuredSerializer<ClaimsRecord> {
  @override
  final Iterable<Type> types = const [ClaimsRecord, _$ClaimsRecord];
  @override
  final String wireName = 'ClaimsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ClaimsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.addresslatlong;
    if (value != null) {
      result
        ..add('addresslatlong')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.causeOfLoss;
    if (value != null) {
      result
        ..add('cause_of_loss')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyName;
    if (value != null) {
      result
        ..add('companyName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateincident;
    if (value != null) {
      result
        ..add('dateincident')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.estimateTotal;
    if (value != null) {
      result
        ..add('estimate_total')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.firstname;
    if (value != null) {
      result
        ..add('firstname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastname;
    if (value != null) {
      result
        ..add('lastname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.policyno;
    if (value != null) {
      result
        ..add('policyno')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.propaddress;
    if (value != null) {
      result
        ..add('propaddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.statusOrder;
    if (value != null) {
      result
        ..add('statusOrder')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.claimNo;
    if (value != null) {
      result
        ..add('claim_no')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.submittedDate;
    if (value != null) {
      result
        ..add('submittedDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.taxID;
    if (value != null) {
      result
        ..add('taxID')
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
  ClaimsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClaimsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'addresslatlong':
          result.addresslatlong = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'cause_of_loss':
          result.causeOfLoss = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'companyName':
          result.companyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateincident':
          result.dateincident = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'estimate_total':
          result.estimateTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'firstname':
          result.firstname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastname':
          result.lastname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'policyno':
          result.policyno = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'propaddress':
          result.propaddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'statusOrder':
          result.statusOrder = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'claim_no':
          result.claimNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'submittedDate':
          result.submittedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'taxID':
          result.taxID = serializers.deserialize(value,
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

class _$ClaimsRecord extends ClaimsRecord {
  @override
  final LatLng? addresslatlong;
  @override
  final String? causeOfLoss;
  @override
  final String? companyName;
  @override
  final DateTime? dateincident;
  @override
  final String? description;
  @override
  final String? email;
  @override
  final double? estimateTotal;
  @override
  final String? firstname;
  @override
  final String? lastname;
  @override
  final String? policyno;
  @override
  final String? propaddress;
  @override
  final int? statusOrder;
  @override
  final String? claimNo;
  @override
  final DateTime? submittedDate;
  @override
  final String? taxID;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ClaimsRecord([void Function(ClaimsRecordBuilder)? updates]) =>
      (new ClaimsRecordBuilder()..update(updates))._build();

  _$ClaimsRecord._(
      {this.addresslatlong,
      this.causeOfLoss,
      this.companyName,
      this.dateincident,
      this.description,
      this.email,
      this.estimateTotal,
      this.firstname,
      this.lastname,
      this.policyno,
      this.propaddress,
      this.statusOrder,
      this.claimNo,
      this.submittedDate,
      this.taxID,
      this.ffRef})
      : super._();

  @override
  ClaimsRecord rebuild(void Function(ClaimsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimsRecordBuilder toBuilder() => new ClaimsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClaimsRecord &&
        addresslatlong == other.addresslatlong &&
        causeOfLoss == other.causeOfLoss &&
        companyName == other.companyName &&
        dateincident == other.dateincident &&
        description == other.description &&
        email == other.email &&
        estimateTotal == other.estimateTotal &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        policyno == other.policyno &&
        propaddress == other.propaddress &&
        statusOrder == other.statusOrder &&
        claimNo == other.claimNo &&
        submittedDate == other.submittedDate &&
        taxID == other.taxID &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    addresslatlong
                                                                        .hashCode),
                                                                causeOfLoss
                                                                    .hashCode),
                                                            companyName
                                                                .hashCode),
                                                        dateincident.hashCode),
                                                    description.hashCode),
                                                email.hashCode),
                                            estimateTotal.hashCode),
                                        firstname.hashCode),
                                    lastname.hashCode),
                                policyno.hashCode),
                            propaddress.hashCode),
                        statusOrder.hashCode),
                    claimNo.hashCode),
                submittedDate.hashCode),
            taxID.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClaimsRecord')
          ..add('addresslatlong', addresslatlong)
          ..add('causeOfLoss', causeOfLoss)
          ..add('companyName', companyName)
          ..add('dateincident', dateincident)
          ..add('description', description)
          ..add('email', email)
          ..add('estimateTotal', estimateTotal)
          ..add('firstname', firstname)
          ..add('lastname', lastname)
          ..add('policyno', policyno)
          ..add('propaddress', propaddress)
          ..add('statusOrder', statusOrder)
          ..add('claimNo', claimNo)
          ..add('submittedDate', submittedDate)
          ..add('taxID', taxID)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ClaimsRecordBuilder
    implements Builder<ClaimsRecord, ClaimsRecordBuilder> {
  _$ClaimsRecord? _$v;

  LatLng? _addresslatlong;
  LatLng? get addresslatlong => _$this._addresslatlong;
  set addresslatlong(LatLng? addresslatlong) =>
      _$this._addresslatlong = addresslatlong;

  String? _causeOfLoss;
  String? get causeOfLoss => _$this._causeOfLoss;
  set causeOfLoss(String? causeOfLoss) => _$this._causeOfLoss = causeOfLoss;

  String? _companyName;
  String? get companyName => _$this._companyName;
  set companyName(String? companyName) => _$this._companyName = companyName;

  DateTime? _dateincident;
  DateTime? get dateincident => _$this._dateincident;
  set dateincident(DateTime? dateincident) =>
      _$this._dateincident = dateincident;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  double? _estimateTotal;
  double? get estimateTotal => _$this._estimateTotal;
  set estimateTotal(double? estimateTotal) =>
      _$this._estimateTotal = estimateTotal;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  String? _policyno;
  String? get policyno => _$this._policyno;
  set policyno(String? policyno) => _$this._policyno = policyno;

  String? _propaddress;
  String? get propaddress => _$this._propaddress;
  set propaddress(String? propaddress) => _$this._propaddress = propaddress;

  int? _statusOrder;
  int? get statusOrder => _$this._statusOrder;
  set statusOrder(int? statusOrder) => _$this._statusOrder = statusOrder;

  String? _claimNo;
  String? get claimNo => _$this._claimNo;
  set claimNo(String? claimNo) => _$this._claimNo = claimNo;

  DateTime? _submittedDate;
  DateTime? get submittedDate => _$this._submittedDate;
  set submittedDate(DateTime? submittedDate) =>
      _$this._submittedDate = submittedDate;

  String? _taxID;
  String? get taxID => _$this._taxID;
  set taxID(String? taxID) => _$this._taxID = taxID;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ClaimsRecordBuilder() {
    ClaimsRecord._initializeBuilder(this);
  }

  ClaimsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _addresslatlong = $v.addresslatlong;
      _causeOfLoss = $v.causeOfLoss;
      _companyName = $v.companyName;
      _dateincident = $v.dateincident;
      _description = $v.description;
      _email = $v.email;
      _estimateTotal = $v.estimateTotal;
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _policyno = $v.policyno;
      _propaddress = $v.propaddress;
      _statusOrder = $v.statusOrder;
      _claimNo = $v.claimNo;
      _submittedDate = $v.submittedDate;
      _taxID = $v.taxID;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClaimsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClaimsRecord;
  }

  @override
  void update(void Function(ClaimsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClaimsRecord build() => _build();

  _$ClaimsRecord _build() {
    final _$result = _$v ??
        new _$ClaimsRecord._(
            addresslatlong: addresslatlong,
            causeOfLoss: causeOfLoss,
            companyName: companyName,
            dateincident: dateincident,
            description: description,
            email: email,
            estimateTotal: estimateTotal,
            firstname: firstname,
            lastname: lastname,
            policyno: policyno,
            propaddress: propaddress,
            statusOrder: statusOrder,
            claimNo: claimNo,
            submittedDate: submittedDate,
            taxID: taxID,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
