import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../res/components/round_button.dart';
import '../../../view_models/controller/login_controller.dart';


class LoginButtonWidget extends StatelessWidget {
  final formKey;
   LoginButtonWidget({super.key,required this.formKey});




  @override
  Widget build(BuildContext context) {
    final loginController=Get.put(LoginController());
      return Obx((){
        return RoundButton(title: "login".tr, onPress: (){
          if(formKey.currentState!.validate()){

            loginController.login();
          }
        },
          width: 200,
          loading: loginController.loading.value,);
      });


  }
}
