import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_artitecture/res/colors/app_colors.dart';
import 'package:mvvm_artitecture/res/components/round_button.dart';
import 'package:mvvm_artitecture/utils/utils.dart';
import 'package:mvvm_artitecture/view/login/widgets/input_email_widget.dart';
import 'package:mvvm_artitecture/view/login/widgets/input_password_widget.dart';
import 'package:mvvm_artitecture/view/login/widgets/login_button_widget.dart';
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
               InputEmailWidget(),
               const SizedBox(height: 10,),
               InputPasswordWidget(),
               const SizedBox(height: 30,),
               LoginButtonWidget(formKey: _formKey)


             ],
          ),
        ),
      ),
    );
  }
}
