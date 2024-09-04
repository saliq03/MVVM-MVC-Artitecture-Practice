import 'dart:async';
import 'package:get/get.dart';
import 'package:mvvm_artitecture/res/routes/routes_name.dart';

class SplashServices{
  isLoggedIn(){
    Timer(Duration(seconds: 3),
        (){
      // Get.toNamed(RoutesName.loginView);
      Get.offNamed(RoutesName.loginView);
        });
  }
}