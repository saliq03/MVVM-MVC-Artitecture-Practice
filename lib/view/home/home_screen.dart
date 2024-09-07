import 'package:flutter/material.dart';
import 'package:mvvm_artitecture/view_models/user_prefrences/user_prefrences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
      title: Text("HOME"),
      ),
      body: ElevatedButton(onPressed: (){
        UserPrefrences().SetLoginKey(false);
      }, child: Text("logout")),
    );
  }
}
