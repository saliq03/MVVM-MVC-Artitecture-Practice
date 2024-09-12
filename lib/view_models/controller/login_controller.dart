import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mvvm_artitecture/models/login/login_response_model.dart';
import 'package:mvvm_artitecture/repository/login_repository/login_repository.dart';

import 'package:mvvm_artitecture/res/routes/routes_name.dart';
import 'package:mvvm_artitecture/utils/utils.dart';
import 'package:mvvm_artitecture/view_models/user_prefrences/user_prefrences.dart';

class LoginController extends GetxController{
  final emailController=TextEditingController().obs;
  final passwordController=TextEditingController().obs;

  final emailFocusNode= FocusNode().obs;
  final passwordFocusNode=FocusNode().obs;

  final _api=LoginRepository();
  final  loading=false.obs;
  void changeLoading()=> loading.value=false;
  void login(){
    loading.value=true;
    print("method called");

    Map data={
      "email": emailController.value.text,
      "password": passwordController.value.text
    };
    _api.loginApi(data).then((value){

      if(value['error']=="user not found"){
        Utils.snackbar('Login', 'User not found');
        loading.value=false;
      }
      else{

        UserPrefrences().SaveUser(LoginResponseModel.fromJson(value)).then((val){
          UserPrefrences().SetLoginKey(true);
          Get.toNamed(RoutesName.homeScreen);
        }).onError((e,stackTree){
          print(e.toString());
        });
        Utils.snackbar('Login', 'Login successful');
        loading.value=false;

      }


    }).onError((error,stackTree){
      Utils.snackbar('Login', error.toString());
      loading.value=false;

    });

  }
}