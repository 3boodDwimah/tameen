// GENERATED CODE - DO NOT MODIFY BY HAND

part of resultModel;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ResultModel> _$resultModelSerializer = new _$ResultModelSerializer();

class _$ResultModelSerializer implements StructuredSerializer<ResultModel> {
  @override
  final Iterable<Type> types = const [ResultModel, _$ResultModel];
  @override
  final String wireName = 'ResultModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ResultModel object,
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
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ResultModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResultModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ResultModel extends ResultModel {
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? type;

  factory _$ResultModel([void Function(ResultModelBuilder)? updates]) =>
      (new ResultModelBuilder()..update(updates)).build();

  _$ResultModel._({this.name, this.image, this.type}) : super._();

  @override
  ResultModel rebuild(void Function(ResultModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResultModelBuilder toBuilder() => new ResultModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResultModel &&
        name == other.name &&
        image == other.image &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), image.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResultModel')
          ..add('name', name)
          ..add('image', image)
          ..add('type', type))
        .toString();
  }
}

class ResultModelBuilder implements Builder<ResultModel, ResultModelBuilder> {
  _$ResultModel? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ResultModelBuilder();

  ResultModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _image = $v.image;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResultModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResultModel;
  }

  @override
  void update(void Function(ResultModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResultModel build() {
    final _$result =
        _$v ?? new _$ResultModel._(name: name, image: image, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
