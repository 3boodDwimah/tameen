
library balanceModel;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tameen/model/BalanceModel/resultbalance.dart';
import 'package:tameen/model/CategoryModel/resultModel.dart';
import 'package:tameen/model/serializer/serializer.dart';
part 'balanceModel.g.dart';

abstract class BalanceModel
    implements Built<BalanceModel,BalanceModelBuilder> {

  String? get msg;

  // BaseResult? get result;

  ResultBalanceModel? get result;


  BalanceModel._();

  factory BalanceModel([Function(BalanceModelBuilder b) updates]) =
  _$BalanceModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(BalanceModel.serializer, this));
  }

  static BalanceModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        BalanceModel.serializer, json.decode(jsonString));
  }

  static Serializer<BalanceModel> get serializer => _$balanceModelSerializer;
}
