import 'dart:async';
import 'package:mvvm_artitecture/data/network/network_api_services.dart';
import 'package:mvvm_artitecture/res/app_url/app_url.dart';

class LoginRepository{
  final networkApi=NetworkApiServices();
  Future<dynamic> loginApi(var data){
    final response=networkApi.postApi(data, AppUrl.loginApi);
    return response;
  }
}