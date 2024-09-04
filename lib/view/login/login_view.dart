import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_artitecture/res/colors/app_colors.dart';
import 'package:mvvm_artitecture/res/components/round_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Login",style: TextStyle(color: AppColors.white,fontWeight: FontWeight.bold),),
        backgroundColor: AppColors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             TextFormField(
               decoration: InputDecoration(
                 hintText: 'email hint'.tr,
                 border: OutlineInputBorder()
               ),
             ),
             SizedBox(height: 10,),
             RoundButton(title: "Login", onPress: (){

             },
             width: 200,)
           ],
        ),
      ),
    );
  }
}
