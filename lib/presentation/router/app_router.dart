import 'package:ahmedtestapp/presentation/screens/home_screen/home_screen.dart';
import 'package:ahmedtestapp/presentation/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../core/change_page/change_page.dart';
import '../screens/home_face_book_screen/home_face_book_screen.dart';
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
        List<String> data=settings.arguments as List<String>;
        return MaterialPageRoute(builder: (_)=> TestScreen(image: data[1], name: data[0],));
      case homeFaceBook:
        return MaterialPageRoute(builder: (_)=>const HomeFaceBookScreen());
      default:
        return null;
    }

  }
}