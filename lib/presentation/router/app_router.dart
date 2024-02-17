import 'package:ahmedtestapp/presentation/screens/home_screen/home_screen.dart';
import 'package:ahmedtestapp/presentation/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../core/change_page/change_page.dart';
import '../screens/test_screen/test_screen.dart';


class AppRouter{
  late Widget startPage;
  Route?onGenerateRoute(RouteSettings settings){
    startPage=const SplashScreen();
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_)=>startPage);
      case homeScreen:
            return MaterialPageRoute(builder: (_)=>const HomeScreen());
      case testScreen:
        return MaterialPageRoute(builder: (_)=>const TestScreen());
      default:
        return null;
    }

  }
}