
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({super.key,
    required this.title,
    required this.onPress,
    this.height=50,
    this.width=60,
    this.titleColor=AppColors.white,
    this.buttonColor=AppColors.blueAccent,
    this.loading=false});

  final String title;
  final double height,width;
  final Color titleColor, buttonColor;
  final bool loading;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: buttonColor
        ),
        child: Center(
          child: loading? CircularProgressIndicator():
              Text(title,style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: titleColor),),
        )
      ),
    );
  }
}
