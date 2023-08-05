import 'dart:convert';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:tameen/model/BalanceModel/balanceModel.dart';
import 'package:tameen/model/CategoryModel/categoryModel.dart';
import 'package:tameen/model/serializer/serializer.dart';
import 'Ihttp_helper.dart';
import 'dart:io';
import 'dart:core';
import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

import 'package:built_collection/built_collection.dart';
import 'Ihttp_helper.dart';

import 'package:cookie_jar/cookie_jar.dart';

class NetworkException implements Exception{}

class HttpHelper implements IHttpHelper {
  final Dio _dio;
  var cookieJar = CookieJar();

  HttpHelper(this._dio) {
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
      ),
    );
    _dio.interceptors.add(CookieManager(cookieJar));
  }

  @override
  Future<CategoryModel> getCategory() async{
    // TODO: implement getCategories
    try {

      final response = await _dio.get('Categories/',
          options: Options(
              headers: {
                "auth": 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.IjRpUmhnampnbGxVPSI.thejGguPYpe-HbFZqGyIZhXyoYEkXN_eZ4URM3rDtXQ',
          })
      );

      if (response.statusCode == 200) {


        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              CategoryModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(CategoryModel),
                  ],
                ),
              ],
            )) as CategoryModel;

        if (baseResponse.msg=='success') {
          return baseResponse ;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<BalanceModel> getBalance() async{
    // TODO: implement getCategories
    try {

      final response = await _dio.get('Wallet/balance',
          options: Options(
              headers: {
                "auth": 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.IjRpUmhnampnbGxVPSI.thejGguPYpe-HbFZqGyIZhXyoYEkXN_eZ4URM3rDtXQ',
              })
      );

      if (response.statusCode == 200) {


        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              BalanceModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(BalanceModel),
                  ],
                ),
              ],
            )) as BalanceModel;

        if (baseResponse.msg=='success') {
          return baseResponse ;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      throw NetworkException();
    }
  }





}
