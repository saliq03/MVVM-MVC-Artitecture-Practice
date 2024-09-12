import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../view_models/controller/login_controller.dart';

class InputPasswordWidget extends StatelessWidget {
  const InputPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController=Get.put(LoginController());
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
