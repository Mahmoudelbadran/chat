import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/change_page/change_page.dart';

class ChatView extends StatelessWidget {
  final String name;
  final String image;
  final String msg;
  final bool state;
  const ChatView({Key? key, required this.name, required this.image, required this.msg, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, testScreen);
      },
      child: Container(
        margin: EdgeInsets.all(10.sp),
        width: 100.w,
        height: 10.h,
        decoration: BoxDecoration(
          color: Colors.black,
          boxShadow: [BoxShadow(color: Colors.white, blurRadius: 10.sp)],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage:  AssetImage(image),
                radius: 23.sp,
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 15.sp),
                  ),
                  Text(
                    msg,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 11.sp),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Visibility(
                visible:state ,
                replacement: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 5.sp,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 5.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
