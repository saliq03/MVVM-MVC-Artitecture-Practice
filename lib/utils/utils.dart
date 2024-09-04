import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mvvm_artitecture/res/colors/app_colors.dart';
import 'package:get/get.dart';

class Utils {
  static void fieldFocusChange(BuildContext context,FocusNode current,FocusNode next){
    current.unfocus();
    FocusScope.of(context).requestFocus(next);
  }
  static toastMessage(String message){
    Fluttertoast.showToast(msg: message,
      backgroundColor:AppColors.black,
      textColor: AppColors.white,
      gravity: ToastGravity.BOTTOM
    );
  }

  static snackbar(String title,String message){
    Get.snackbar(title, message,
    duration: Duration(seconds: 1),
      // snackPosition:SnackPosition.TOP
    );
  }
}