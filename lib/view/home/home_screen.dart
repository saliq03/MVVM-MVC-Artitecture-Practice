import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_artitecture/res/components/internet_exception.dart';
import 'package:mvvm_artitecture/utils/utils.dart';
import 'package:mvvm_artitecture/view/home/widgets/listview_builder_widget.dart';
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
             return ListviewBuilderWidget();
           case Status.ERROR:
             return InternetException(onPress: (){
               homeController.Refresh();
             });

        }
      })
    );
  }
}
