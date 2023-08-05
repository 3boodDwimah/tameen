import 'dart:convert';
import 'dart:io';

import 'package:built_collection/src/list.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:tameen/data/http_helper/Ihttp_helper.dart';
import 'package:tameen/data/prefs_helper/iprefs_helper.dart';
import 'package:tameen/model/BalanceModel/balanceModel.dart';
import 'package:tameen/model/CategoryModel/categoryModel.dart';

import 'irepository.dart';

class Repository implements IRepository {
  IHttpHelper _ihttpHelper;
  IPrefsHelper _iprefHelper;

  Repository(this._ihttpHelper, this._iprefHelper);



  @override
  Future<CategoryModel> getCategory() async{
    // TODO: implement getCategories
    // String auth= await _iprefHelper.getAuthToken();

    final user = await _ihttpHelper.getCategory();

    return user;
  }
  @override
  Future<BalanceModel> getBalance() async{
    // TODO: implement getCategories
    // String auth= await _iprefHelper.getAuthToken();

    final user = await _ihttpHelper.getBalance();

    return user;
  }



}

