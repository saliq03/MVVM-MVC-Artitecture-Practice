import 'package:flutter/material.dart';
import 'package:mvvm_artitecture/res/components/internet_exception.dart';
import 'package:mvvm_artitecture/res/components/round_button.dart';

import '../res/colors/app_colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: Center(
          child:RoundButton(title: 'Login', onPress: (){},width: 200,
          loading: true,)),
    );
  }
}
