import 'package:mvvm_artitecture/data/app_exceptions.dart';
import 'package:mvvm_artitecture/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;
class NetworkApiServices extends BaseApiServices{
  @override
  Future<dynamic> getApi(String Url)async {
    var jsonResponse;
    try{
      final response = await http.get(Uri.parse(Url)).timeout(Duration(seconds: 10));
      jsonResponse= JsonResponse(response);
    }catch (e){
        print(e.toString());
    }

    return jsonResponse;
  }

  String JsonResponse(http.Response response){
    switch(response.statusCode){
      case 200:
       return response.body;
      case 400:
        throw InternetException("");
      default:
        throw ServerException('');
    }
  }

}