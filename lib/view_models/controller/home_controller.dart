import 'package:get/get.dart';
import 'package:mvvm_artitecture/models/home/user_list_model.dart';
import 'package:mvvm_artitecture/repository/home_repository/home_repository.dart';
import '../../data/response/status.dart';

class HomeController extends GetxController{
  final _api= HomeRepository();
  final requeststatus=Status.LOADING.obs;
  final userlist=UserListModel().obs;

  void setRequestStatus(Status value)=> requeststatus.value=value;
  void setUserList(value)=> userlist.value=UserListModel.fromJson(value);
  void userListApi(){
   _api.homeApi().then((value){
     setRequestStatus(Status.SUCCESS);
   setUserList(value);

   }).onError((error, stackTree){
     setRequestStatus(Status.ERROR);
   });
  }


  void Refresh(){
    setRequestStatus(Status.LOADING);
    _api.homeApi().then((value){
      setRequestStatus(Status.SUCCESS);
      setUserList(value);

    }).onError((error, stackTree){
      setRequestStatus(Status.ERROR);
    });
  }
}