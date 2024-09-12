import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view_models/controller/login_controller.dart';

class InputPasswordWidget extends StatelessWidget {
  final loginController=Get.put(LoginController());
  @override
  Widget build(BuildContext context) {

    return TextFormField(
      controller: loginController.passwordController.value,
      focusNode: loginController.passwordFocusNode.value,
      validator: (value){
        if(value!.isEmpty){
          return 'enter password'.tr;
        }},

      decoration: InputDecoration(
          hintText: 'password hint'.tr,
          border: const OutlineInputBorder()
      ),
    );
  }
}
