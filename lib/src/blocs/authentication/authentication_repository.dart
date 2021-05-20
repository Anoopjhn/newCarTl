import 'dart:convert';

import 'package:evalutor_app/src/api/api.dart';
import 'package:evalutor_app/src/models/res_obj.dart';
import 'package:evalutor_app/src/models/user_model.dart';

class AuthenticationRepository{
  Future<RespObj> login({String mobNo,String password}) async {
    String route = '';
    Map<String,dynamic> sendData = {
      "function":"login",
      "username":"$mobNo",
      "password":"$password"
    };

    String jsonData = jsonEncode(sendData);

    RespObj response = await api.postData(route, mBody: jsonData);
    if(response.getStatus()){
      dynamic data = response.data;
      print(data);
    }
    return response;
  }

  Future<RespObj> logOut(String token) async {
    String route = '';
    Map<String, dynamic> logoutData = {
      "function" : "logout"
    };
    String jsonData = jsonEncode(logoutData);
    RespObj response = await api.postData(route, mBody: jsonData,header: token);
    return response;
  }
}