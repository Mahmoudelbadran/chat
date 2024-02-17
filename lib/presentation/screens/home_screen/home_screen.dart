import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 50.sp,
          shadowColor: Colors.red,
          backgroundColor: Colors.green,
          title: Text(
            "Whats App",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
              fontWeight: FontWeight.w900,
              letterSpacing: 5.sp,
              shadows: [
                Shadow(color: Colors.red, blurRadius: 25.sp),
                Shadow(color: Colors.yellow, blurRadius: 10.sp),
                Shadow(color: Colors.black, blurRadius: 10.sp),
              ],
            ),
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.add_a_photo,
              size: 20.sp,
              color: Colors.white,
            ),
            Icon(
              Icons.add,
              size: 20.sp,
              color: Colors.white,
            ),
            Icon(
              Icons.face,
              size: 20.sp,
              color: Colors.white,
            )
          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.sp),
                  bottomRight: Radius.circular(15.sp))),

      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        elevation:15.sp ,
        shadowColor: Colors.red,
        child:SizedBox(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.start ,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10.sp),
                width: 100.w,
                height: 10.h,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.all(10.sp),
                width: 100.w,
                height: 10.h,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.all(10.sp),
                width: 100.w,
                height: 10.h,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.all(10.sp),
                width: 100.w,
                height: 10.h,
                color: Colors.red,
              ),
            ],
          ),
        ) ,


      ),
       body:SizedBox(
         child:ListView.builder(
           itemCount: 5,
           itemBuilder: (context,index)=> Container(
           margin: EdgeInsets.all(10.sp),
           width: 100.w,
           height: 10.h,
           decoration: BoxDecoration(
             color: Colors.black,
             boxShadow: [
               BoxShadow(color: Colors.white,blurRadius: 10.sp)
             ],
           ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: const AssetImage("images/profile.jpg"),
                  radius: 23.sp,
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ahmed Omar",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15.sp),),
                    Text("Hello,Mahmoud",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 11.sp),),
                  ],
                ),
              ),
              Expanded(
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 5.sp,
                ),
              ),
            ],
          ),
         ),
         )
       ) ,
    );
  }
}
