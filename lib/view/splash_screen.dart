import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_artitecture/res/assets/image_assets.dart';
import 'package:mvvm_artitecture/res/routes/routes_name.dart';
import 'package:mvvm_artitecture/utils/utils.dart';

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
        }, child: Text("Urdu")),

        OutlinedButton(onPressed: (){
         Get.toNamed(RoutesName.HomeScreen);
        }, child: Text("home")),
        Image(image: AssetImage(ImageAssets.saliq))
      ],),
      floatingActionButton: FloatingActionButton(onPressed: (){
        // Utils.toastMessage("this is a toast messatge");
        Utils.snackbar("snackbar", "this is a snackbar");
      }),

    );
  }
}
