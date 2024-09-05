import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:mvvm_artitecture/data/app_exceptions.dart';
import 'package:mvvm_artitecture/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;
class NetworkApiServices extends BaseApiServices{
  @override
  Future<dynamic> getApi(String Url)async {
    if(kDebugMode){
      print(Url);
    }
    dynamic jsonResponse;
    try{
      final response = await http.get(Uri.parse(Url)).timeout(const Duration(seconds: 10));
      jsonResponse=ReturnResponse(response);
    }on SocketException{
      throw InternetException('');
    }on RequestTimeOut{
      throw RequestTimeOut('');
    }
    return jsonResponse;
  }

  Future<dynamic> postApi(var data,String Url) async {
    if(kDebugMode){
      print(Url);
      print(data);
    }
    dynamic jsonResponse;
    try{
      final response = await http.post(Uri.parse(Url),
      body: data).timeout(const Duration(seconds: 10));
      jsonResponse=ReturnResponse(response);
    }on SocketException{
      throw InternetException('');
    }on RequestTimeOut{
      throw RequestTimeOut('');
    }
    return jsonResponse;
  }

  dynamic ReturnResponse(http.Response response){

    switch(response.statusCode){
      case 200:
       return jsonDecode(response.body);
      case 400:
        return jsonDecode(response.body);
      default:
        throw FetchDataException('Error occured while communicating with server '+response.body.toString());
    }
  }

}