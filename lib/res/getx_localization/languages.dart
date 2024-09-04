import 'package:get/get.dart';

class Languages extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US':{
      'email hint': ' Email',
      'password hint': 'Password',
      'login':'Log In',
      'enter email':'enter email',
      'enter password':'enter password',
      'internet exception': 'We are unable to connect to internet \n Please try again later',
      'general exception' :'We are unable to process right now \n Please try again later'
    },
    'ur_PK':{
      'email hint': 'ای میل درج کریں'
    },

  };

}