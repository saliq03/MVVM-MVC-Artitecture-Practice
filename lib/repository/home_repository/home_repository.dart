import '../../data/network/network_api_services.dart';
import '../../res/app_url/app_url.dart';

class HomeRepository{
  final networkApi=NetworkApiServices();
  Future<dynamic> homeApi(){
    final response=networkApi.getApi(AppUrl.userListApi);
    return response;
  }
}