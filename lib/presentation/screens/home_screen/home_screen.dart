import 'package:ahmedtestapp/business_logic/home_logic/home_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

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
              state: cubit.data[index]['state']),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)
                      ),
                      title: Text(
                        "ADD Chat",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      content: SizedBox(
                        width: 80.w,
                        height: 30.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5.sp),
                              child: TextFormField(
                                controller: name,
                                keyboardType: TextInputType.text,
                                maxLines: 1,
                                style: const TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  label: const Text("username"),
                                  labelStyle:
                                      const TextStyle(color: Colors.blue),
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.sp),
                                      borderRadius:
                                          BorderRadius.circular(15.sp)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blue, width: 1.sp),
                                      borderRadius:
                                          BorderRadius.circular(15.sp)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5.sp),
                              child: TextFormField(
                                controller: msg,
                                keyboardType: TextInputType.text,
                                maxLines: 1,
                                style: const TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  label: const Text("Message"),
                                  labelStyle:
                                      const TextStyle(color: Colors.blue),
                                  prefixIcon: const Icon(
                                    Icons.message_outlined,
                                    color: Colors.green,
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.sp),
                                      borderRadius:
                                          BorderRadius.circular(15.sp)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blue, width: 1.sp),
                                      borderRadius:
                                          BorderRadius.circular(15.sp)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5.sp),
                              child: TextFormField(
                                controller: user,
                                keyboardType: TextInputType.text,
                                maxLines: 1,
                                style: const TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  label: const Text("state"),
                                  labelStyle:
                                      const TextStyle(color: Colors.blue),
                                  prefixIcon: const Icon(
                                    Icons.star_half_outlined,
                                    color: Colors.green,
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.sp),
                                      borderRadius:
                                          BorderRadius.circular(15.sp)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.blue, width: 1.sp),
                                      borderRadius:
                                          BorderRadius.circular(15.sp)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              if (user.text == "online") {
                                cubit.addChat(
                                    name: name.text,
                                    msg: msg.text,
                                    image: "images/profile.jpg",
                                    state: true);
                              } else {
                                cubit.addChat(
                                    name: name.text,
                                    msg: msg.text,
                                    image: "images/profile.jpg",
                                    state: false);
                              }
                              Navigator.pop(context);
                            },
                            child: Text(
                              "add",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.sp),
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "cancel",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.sp),
                            )),
                      ],
                  icon: CircleAvatar(
                    backgroundImage: const AssetImage("images/profile.jpg"),
                    radius: 30.sp,
                  )
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
