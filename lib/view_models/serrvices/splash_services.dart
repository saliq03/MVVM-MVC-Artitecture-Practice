import 'dart:async';
import 'package:get/get.dart';
import 'package:mvvm_artitecture/res/routes/routes_name.dart';
import 'package:mvvm_artitecture/view_models/user_prefrences/user_prefrences.dart';

class SplashServices{
  isLoggedIn(){
    UserPrefrences().GetLoginKey().then((value){
      if(value==true){
        Timer(const Duration(milliseconds:3),(){
          Get.offNamed(RoutesName.homeScreen);
        });
      }
      else{
        Timer(const Duration(milliseconds:3),(){
          Get.offNamed(RoutesName.loginView);
        });
      }
    });
  }
}