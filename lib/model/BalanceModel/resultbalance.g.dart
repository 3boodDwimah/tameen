// GENERATED CODE - DO NOT MODIFY BY HAND

part of resultbalance;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ResultBalanceModel> _$resultBalanceModelSerializer =
    new _$ResultBalanceModelSerializer();

class _$ResultBalanceModelSerializer
    implements StructuredSerializer<ResultBalanceModel> {
  @override
  final Iterable<Type> types = const [ResultBalanceModel, _$ResultBalanceModel];
  @override
  final String wireName = 'ResultBalanceModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ResultBalanceModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.user_id;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.balance;
    if (value != null) {
      result
        ..add('balance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ResultBalanceModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResultBalanceModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_id':
          result.user_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'balance':
          result.balance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ResultBalanceModel extends ResultBalanceModel {
  @override
  final String? user_id;
  @override
  final String? balance;

  factory _$ResultBalanceModel(
          [void Function(ResultBalanceModelBuilder)? updates]) =>
      (new ResultBalanceModelBuilder()..update(updates)).build();

  _$ResultBalanceModel._({this.user_id, this.balance}) : super._();

  @override
  ResultBalanceModel rebuild(
          void Function(ResultBalanceModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResultBalanceModelBuilder toBuilder() =>
      new ResultBalanceModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResultBalanceModel &&
        user_id == other.user_id &&
        balance == other.balance;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user_id.hashCode), balance.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResultBalanceModel')
          ..add('user_id', user_id)
          ..add('balance', balance))
        .toString();
  }
}

class ResultBalanceModelBuilder
    implements Builder<ResultBalanceModel, ResultBalanceModelBuilder> {
  _$ResultBalanceModel? _$v;

  String? _user_id;
  String? get user_id => _$this._user_id;
  set user_id(String? user_id) => _$this._user_id = user_id;

  String? _balance;
  String? get balance => _$this._balance;
  set balance(String? balance) => _$this._balance = balance;

  ResultBalanceModelBuilder();

  ResultBalanceModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user_id = $v.user_id;
      _balance = $v.balance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResultBalanceModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResultBalanceModel;
  }

  @override
  void update(void Function(ResultBalanceModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResultBalanceModel build() {
    final _$result =
        _$v ?? new _$ResultBalanceModel._(user_id: user_id, balance: balance);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
