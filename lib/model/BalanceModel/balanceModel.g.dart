// GENERATED CODE - DO NOT MODIFY BY HAND

part of balanceModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BalanceModel> _$balanceModelSerializer =
    new _$BalanceModelSerializer();

class _$BalanceModelSerializer implements StructuredSerializer<BalanceModel> {
  @override
  final Iterable<Type> types = const [BalanceModel, _$BalanceModel];
  @override
  final String wireName = 'BalanceModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, BalanceModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.msg;
    if (value != null) {
      result
        ..add('msg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.result;
    if (value != null) {
      result
        ..add('result')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ResultBalanceModel)));
    }
    return result;
  }

  @override
  BalanceModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BalanceModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'msg':
          result.msg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'result':
          result.result.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ResultBalanceModel))!
              as ResultBalanceModel);
          break;
      }
    }

    return result.build();
  }
}

class _$BalanceModel extends BalanceModel {
  @override
  final String? msg;
  @override
  final ResultBalanceModel? result;

  factory _$BalanceModel([void Function(BalanceModelBuilder)? updates]) =>
      (new BalanceModelBuilder()..update(updates)).build();

  _$BalanceModel._({this.msg, this.result}) : super._();

  @override
  BalanceModel rebuild(void Function(BalanceModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BalanceModelBuilder toBuilder() => new BalanceModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BalanceModel && msg == other.msg && result == other.result;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, msg.hashCode), result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BalanceModel')
          ..add('msg', msg)
          ..add('result', result))
        .toString();
  }
}

class BalanceModelBuilder
    implements Builder<BalanceModel, BalanceModelBuilder> {
  _$BalanceModel? _$v;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  ResultBalanceModelBuilder? _result;
  ResultBalanceModelBuilder get result =>
      _$this._result ??= new ResultBalanceModelBuilder();
  set result(ResultBalanceModelBuilder? result) => _$this._result = result;

  BalanceModelBuilder();

  BalanceModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _msg = $v.msg;
      _result = $v.result?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BalanceModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BalanceModel;
  }

  @override
  void update(void Function(BalanceModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BalanceModel build() {
    _$BalanceModel _$result;
    try {
      _$result =
          _$v ?? new _$BalanceModel._(msg: msg, result: _result?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'result';
        _result?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BalanceModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
