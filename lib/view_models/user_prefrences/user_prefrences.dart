import 'package:shared_preferences/shared_preferences.dart';

import '../../models/login/login_response_model.dart';

class UserPrefrences {
  
  Future<bool> SaveUser(LoginResponseModel loginresponsemodel) async {
    SharedPreferences sp=await SharedPreferences.getInstance();
    sp.setString("token", loginresponsemodel.token.toString());
    return true;
  }

 Future<LoginResponseModel> GetUser() async {
    SharedPreferences sp=await SharedPreferences.getInstance();
    String? token=sp.getString("token");
    return LoginResponseModel(
      token: token
    );
  }
  Future<bool> RemoveUser() async {
    SharedPreferences sp=await SharedPreferences.getInstance();
    sp.clear();
    return true;
  }
}