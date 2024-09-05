import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mvvm_artitecture/repository/login_repository/login_repository.dart';
import 'package:mvvm_artitecture/utils/utils.dart';

class LoginController extends GetxController{
  final emailController=TextEditingController().obs;
  final passwordController=TextEditingController().obs;

  final emailFocusNode= FocusNode().obs;
  final passwordFocusNode=FocusNode().obs;

  final _api=LoginRepository();
  final  loading=false.obs;
  login(){
    loading.value=true;
    Map data={
      "email": emailController.value.text,
      "password": passwordController.value.text
    };
    _api.loginApi(data).then((value){

      if(value['error']=="user not found"){
        Utils.snackbar('Login', 'User not found');
      }
      else{
        Utils.snackbar('Login', 'Login successful');
      }


    }).onError((error,stackTree){
      Utils.snackbar('Login', error.toString());
    });
    loading.value=false;
  }
}