
library categoryModel;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tameen/model/CategoryModel/resultModel.dart';
import 'package:tameen/model/serializer/serializer.dart';
part 'categoryModel.g.dart';

abstract class CategoryModel
    implements Built<CategoryModel,CategoryModelBuilder> {

  String? get msg;

  // BaseResult? get result;

  BuiltList<ResultModel> get result;


  CategoryModel._();

  factory CategoryModel([Function(CategoryModelBuilder b) updates]) =
  _$CategoryModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(CategoryModel.serializer, this));
  }

  static CategoryModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CategoryModel.serializer, json.decode(jsonString));
  }

  static Serializer<CategoryModel> get serializer => _$categoryModelSerializer;
}
