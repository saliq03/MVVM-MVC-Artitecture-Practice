import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../view_models/controller/home_controller.dart';

class ListviewBuilderWidget extends StatelessWidget {
  const ListviewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController =Get.put(HomeController());
    return ListView.builder(
        itemCount: homeController.userlist.value.data!.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(homeController.userlist.value.data![index].avatar!),
              ),
              title: Text(homeController.userlist.value.data![index].firstName!),
              subtitle: Text(homeController.userlist.value.data![index].email!),
            ),
          );
        });;
  }
}
