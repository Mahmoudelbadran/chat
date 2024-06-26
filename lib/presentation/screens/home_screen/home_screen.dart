import 'package:ahmedtestapp/business_logic/home_logic/home_logic.dart';
import 'package:ahmedtestapp/core/change_page/change_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../view/add_chat_view.dart';
import '../../view/chat_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController msg = TextEditingController();
  TextEditingController user = TextEditingController();
 final GlobalKey<FormState> _key=GlobalKey<FormState>();
  late HomeLogic cubit;
  @override
  void initState() {
    cubit = HomeLogic.get(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeLogic, HomeState>(builder: (context, state) {
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
            IconButton(onPressed: (){
              Navigator.pushNamed(context, homeFaceBook);
            }, icon: const Icon(Icons.pages_rounded,color: Colors.white,)),
            IconButton(
              onPressed: (){
                Navigator.pushNamed(context, colorsScreen);
              },
              icon: Icon(Icons.games,color:Colors.white,size: 20.sp,),
            )

          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.sp),
                  bottomRight: Radius.circular(15.sp))),
        ),
        drawer: Drawer(
          backgroundColor: Colors.black,
          elevation: 15.sp,
          shadowColor: Colors.red,
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
          ),
        ),
        body: SizedBox(
            child: ListView.builder(
          itemCount: cubit.data.length,
          itemBuilder: (context, index) => ChatView(
              name: cubit.data[index]['name'],
              msg: cubit.data[index]['msg'],
              image: cubit.data[index]['image'],
              states: cubit.data[index]['state'],
            index: index,
          ),

        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => Form(
                  key: _key,
                  child: AddChatView(name: name,msg: msg,user: user,formKey: _key,cubit: cubit,)
                ));
          },
          backgroundColor: Colors.green,
          child: const Icon(
            Icons.chat,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        extendBody: true,
        endDrawer: const Drawer(),
      );
    });
  }

  @override
  void dispose() {
    name.dispose();
    msg.dispose();
    user.dispose();
    super.dispose();
  }
}
