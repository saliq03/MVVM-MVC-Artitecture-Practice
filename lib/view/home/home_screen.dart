import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_artitecture/res/components/internet_exception.dart';
import 'package:mvvm_artitecture/utils/utils.dart';
import 'package:mvvm_artitecture/view_models/controller/home_controller.dart';
import '../../data/response/status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeController =Get.put(HomeController());

  @override
  void initState() {
    homeController.userListApi();
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
      ),
      body: Obx((){
         switch (homeController.requeststatus.value) {
           case Status.LOADING:
             return Center(child: CircularProgressIndicator());
           case Status.SUCCESS:
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
             });
           case Status.ERROR:
             return InternetException(onPress: (){
               homeController.setRequestStatus(Status.LOADING);
               homeController.userListApi();
             });

        }
      })
    );
  }
}
