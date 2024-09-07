import 'package:flutter/material.dart';
import 'package:mvvm_artitecture/view_models/serrvices/splash_services.dart';
import '../res/colors/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashServices=SplashServices();

  @override
  void initState() {
    super.initState();
    splashServices.isLoggedIn();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueAccent,
    );
  }
}
