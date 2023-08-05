import 'package:built_collection/src/list.dart';
import 'package:tameen/model/BalanceModel/balanceModel.dart';

import 'dart:io';

import 'package:tameen/model/CategoryModel/categoryModel.dart';


abstract class IRepository {

  Future<CategoryModel> getCategory();
  Future<BalanceModel> getBalance();

}
