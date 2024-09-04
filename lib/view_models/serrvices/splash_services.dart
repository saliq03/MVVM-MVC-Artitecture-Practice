import 'dart:async';
import 'package:get/get.dart';
import 'package:mvvm_artitecture/res/routes/routes_name.dart';

class SplashServices{
  isLoggedIn(){
    Timer(Duration(seconds: 2),
        (){
      Get.toNamed(RoutesName.loginView);
        });
  }
}