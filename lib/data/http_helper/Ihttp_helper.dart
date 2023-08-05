import 'dart:io';
import 'package:built_collection/src/list.dart';
import 'package:built_collection/built_collection.dart';
import 'package:tameen/model/BalanceModel/balanceModel.dart';
import 'package:tameen/model/CategoryModel/categoryModel.dart';


abstract class IHttpHelper {

  Future<CategoryModel> getCategory();
  Future<BalanceModel> getBalance();



}
