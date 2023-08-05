
library resultModel;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tameen/model/serializer/serializer.dart';
part 'resultModel.g.dart';

abstract class ResultModel
    implements Built<ResultModel,ResultModelBuilder> {

  String? get name;
  String? get image;
  String? get type;



  ResultModel._();

  factory ResultModel([Function(ResultModelBuilder b) updates]) =
  _$ResultModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ResultModel.serializer, this));
  }

  static ResultModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ResultModel.serializer, json.decode(jsonString));
  }

  static Serializer<ResultModel> get serializer => _$resultModelSerializer;
}
