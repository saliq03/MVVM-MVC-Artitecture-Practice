import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_artitecture/res/getx_localization/languages.dart';
import 'package:mvvm_artitecture/res/routes/routes.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MVVM practice',
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: const Locale('en','US'),
      fallbackLocale: const Locale('en','US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppRoutes.appRoutes(),
    );
  }
}

