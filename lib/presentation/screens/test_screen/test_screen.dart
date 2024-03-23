import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TestScreen extends StatefulWidget {
  final String image;
  final String name;
  const TestScreen({Key? key, required this.image, required this.name}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool value= false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20.sp,),
        ),
      ),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(widget.image),
              radius: 50.sp,
            ),
            Text(widget.name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20.sp),)
          ],
        ),
      ),

    );
  }
}
