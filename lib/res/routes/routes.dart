import 'package:get/get.dart';
import 'package:mvvm_artitecture/res/routes/routes_name.dart';
import 'package:mvvm_artitecture/view/home/home_screen.dart';
import 'package:mvvm_artitecture/view/login/login_view.dart';
import 'package:mvvm_artitecture/view/splash_screen.dart';

class AppRoutes{
  static appRoutes()=>[
    GetPage(
        name: RoutesName.splashScreen,
        page: ()=>SplashScreen(),
        transitionDuration: Duration(seconds: 3),
         transition: Transition.leftToRightWithFade),

    GetPage(
        name: RoutesName.loginView,
        page: ()=>LoginView(),
        transitionDuration: Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade),

    GetPage(
        name: RoutesName.homeScreen,
        page: ()=>HomeScreen(),
        transitionDuration: Duration(milliseconds: 250),
        transition: Transition.rightToLeftWithFade),

  ];
}