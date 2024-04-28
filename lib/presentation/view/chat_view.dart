import 'package:ahmedtestapp/business_logic/home_logic/home_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../core/change_page/change_page.dart';

class ChatView extends StatelessWidget {
  final String name;
  final String image;
  final String msg;
  final bool states;
 final int index;
  const ChatView({Key? key, required this.name, required this.image, required this.msg, required this.states, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeLogic cubit=HomeLogic.get(context);
    return BlocBuilder<HomeLogic, HomeState>(
  builder: (context, state) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, testScreen,arguments: [name,image]);
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
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Visibility(
                    visible:states ,
                    replacement: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 5.sp,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 5.sp,
                    ),
                  ),
                  IconButton(onPressed: (){
                    cubit.deleteUser(index:index );
                  }, icon: Icon(Icons.delete_forever,color: Colors.red,size: 20.sp,))
                ],
              )
            ),
          ],
        ),
      ),
    );
  },
);
  }
}
