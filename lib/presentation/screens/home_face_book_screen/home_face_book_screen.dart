import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeFaceBookScreen extends StatefulWidget {
  const HomeFaceBookScreen({Key? key}) : super(key: key);

  @override
  State<HomeFaceBookScreen> createState() => _HomeFaceBookScreenState();
}

class _HomeFaceBookScreenState extends State<HomeFaceBookScreen> {
 final GlobalKey<ScaffoldState> _key=GlobalKey<ScaffoldState>();
 String image="images/profile.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:_key ,

      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text("FaceBook",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w600),),
        leading: Icon(Icons.facebook,color: Colors.white,size: 25.sp,),
        actions:  [
          CircleAvatar(
            backgroundColor: Colors.white,
             backgroundImage: const AssetImage("images/profile.jpg"),
            radius: 21.sp,
          )
        ],
      ),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100.w,
                height: 25.h,
                padding: EdgeInsets.all(20.sp),
                child: PageView.builder(
                  itemCount: 3,
                    itemBuilder: (context,i)=>Container(
                      width: 100.w,height: 100.h,
                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(5.sp)),
                      child: Center(child: Text("page $i",style: TextStyle(color: Colors.white,fontSize: 15.sp),)),
                    )),
              ),
              Container(
                padding: EdgeInsets.all(5.sp),
                width: 100.w,
                height: 15.h,
                child: ListView.builder(
                  itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,i)=>InkWell(
                      onTap: (){
                        setState(() {
                          image="images/o.png";
                        });
                      },
                      onDoubleTap: (){
                        image="images/x.png";
                      },
                      child: Container(
                                        width: 25.w,
                                        height: 15.h,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(5.sp)
                                      ),
                                        margin: EdgeInsets.all(5.sp),
                        child:Center(child: Image.asset(image)) ,
                                      ),
                    )),
              ),
              Container(
                width: 100.w,
                height:60.h ,
                padding: EdgeInsets.all(5.sp),
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,i)=>Container(
                      width: 100.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5.sp)
                      ),
                      margin: EdgeInsets.all(5.sp),
                      child:Center(child: Text("page $i",style: TextStyle(color: Colors.white,fontSize: 15.sp),)) ,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
