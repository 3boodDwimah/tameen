library serializer;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:tameen/model/CategoryModel/categoryModel.dart';
import 'package:tameen/model/CategoryModel/resultModel.dart';
part 'serializer.g.dart';


@SerializersFor(const [
  CategoryModel,
  ResultModel,

])
final Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin())


  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(CategoryModel),
        ],
      )),
          () => ListBuilder<CategoryModel>())

  ..addBuilderFactory(
      (FullType(
        BuiltList,
        [
          const FullType(ResultModel),
        ],
      )),
          () => ListBuilder<ResultModel>())


)
    .build();
