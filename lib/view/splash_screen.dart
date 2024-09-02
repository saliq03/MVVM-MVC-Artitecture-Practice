import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('email hint'.tr),
        centerTitle: true,
      ),
      body: Column(children: [
        OutlinedButton(onPressed: (){
          Get.updateLocale(Locale('en','US'));
        }, child: Text("English")),

        OutlinedButton(onPressed: (){
          Get.updateLocale(Locale('ur','PK'));
        }, child: Text("Urdu"))
      ],),
    );
  }
}
