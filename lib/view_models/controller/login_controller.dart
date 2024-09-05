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
  final  loading=true.obs;
  login(){
    loading.value=false;
    Map data={
      "email": emailController.value,
      "password": passwordController.value
    };
    _api.loginApi(data).then((value){
      loading.value=false;
      Utils.snackbar('Login', 'Login successful');
    }).onError((error,stackTree){
      loading.value=false;
      Utils.snackbar('Login', error.toString());
    });
  }
}