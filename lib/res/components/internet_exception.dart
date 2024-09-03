import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_artitecture/res/colors/app_colors.dart';

class InternetException extends StatefulWidget {
  final VoidCallback onPress;
  const InternetException({super.key,required this.onPress});

  @override
  State<InternetException> createState() => _InternetExceptionState();
}

class _InternetExceptionState extends State<InternetException> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.cloud_off,color: AppColors.red,size: 50,),
        SizedBox(height: 30,),
        Text('internet exception'.tr),
        SizedBox(height: 50,),
        InkWell(
          onTap: widget.onPress,
          child: Container(
            width: 200,
            color: AppColors.black,
            child: Center(child: Text("Retry",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.white)),)),
          ),

      ],
    );
  }
}
