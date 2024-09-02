import 'package:get/get.dart';
import 'package:mvvm_artitecture/res/routes/routes_name.dart';
import 'package:mvvm_artitecture/view/home.dart';
import 'package:mvvm_artitecture/view/splash_screen.dart';

class AppRoutes{
  static appRoutes()=>[
    GetPage(
        name: RoutesName.SplashScreen,
        page: ()=>SplashScreen(),
        transitionDuration: Duration(seconds: 3),
         transition: Transition.leftToRightWithFade),

    GetPage(
        name: RoutesName.HomeScreen,
        page: ()=>Home(),
        transitionDuration: Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade),

  ];
}