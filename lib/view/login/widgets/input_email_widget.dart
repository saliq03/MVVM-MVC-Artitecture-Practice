import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/utils.dart';
import '../../../view_models/controller/login_controller.dart';

class InputEmailWidget extends StatelessWidget {
  const InputEmailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController=Get.put(LoginController());
    return TextFormField(
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
    );
  }
}
