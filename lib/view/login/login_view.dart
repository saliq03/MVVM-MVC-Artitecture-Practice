import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_artitecture/res/colors/app_colors.dart';
import 'package:mvvm_artitecture/res/components/round_button.dart';
import 'package:mvvm_artitecture/utils/utils.dart';
import 'package:mvvm_artitecture/view_models/controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginController=Get.put(LoginController());
  final _formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Login",style: TextStyle(color: AppColors.white,fontWeight: FontWeight.bold),),
        backgroundColor: AppColors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               TextFormField(
                 controller: loginController.emailController.value,
                 focusNode: loginController.emailFocusNode.value,
                 validator: (value){
                   if(value!.isEmpty){
                     return 'enter email'.tr;
                   }},
                 onFieldSubmitted: (value){
                   Utils.fieldFocusChange(context, loginController.emailFocusNode.value, loginController.passwordFocusNode.value);
                 },
                 decoration: InputDecoration(
                   hintText: 'email hint'.tr,
                   border: OutlineInputBorder()
                 ),
               ),
              SizedBox(height: 10,),
               TextFormField(
                 controller: loginController.passwordController.value,
                 focusNode: loginController.passwordFocusNode.value,
                 validator: (value){
                   if(value!.isEmpty){
                     return 'enter password'.tr;
                   }},

                 decoration: InputDecoration(
                     hintText: 'password hint'.tr,
                     border: OutlineInputBorder()
                 ),
               ),
              const SizedBox(height: 30,),
               RoundButton(title: "login".tr, onPress: (){
                if(_formKey.currentState!.validate()){

                }
               },
               width: 200,)
             ],
          ),
        ),
      ),
    );
  }
}
