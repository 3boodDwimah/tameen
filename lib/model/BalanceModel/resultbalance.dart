
library resultbalance;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tameen/model/serializer/serializer.dart';
part 'resultbalance.g.dart';

abstract class ResultBalanceModel
    implements Built<ResultBalanceModel,ResultBalanceModelBuilder> {

  String? get user_id;
  String? get balance;



  ResultBalanceModel._();

  factory ResultBalanceModel([Function(ResultBalanceModelBuilder b) updates]) =
  _$ResultBalanceModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ResultBalanceModel.serializer, this));
  }

  static ResultBalanceModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ResultBalanceModel.serializer, json.decode(jsonString));
  }

  static Serializer<ResultBalanceModel> get serializer => _$resultBalanceModelSerializer;
}
