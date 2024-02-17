import 'package:ahmedtestapp/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter=AppRouter();
    return Sizer(
        builder: (context, orientation, deviceType){
        return  MaterialApp(
          title: "Chat App",
          debugShowCheckedModeBanner: false,
          onGenerateRoute: appRouter.onGenerateRoute,
        );
      }
    );
  }
}






