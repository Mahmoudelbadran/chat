import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../business_logic/home_logic/home_logic.dart';

class AddChatView extends StatelessWidget {
  final TextEditingController name;
  final TextEditingController msg;
  final TextEditingController user;
  final HomeLogic cubit;
  final GlobalKey<FormState> formKey;
  const AddChatView({Key? key, required this.name, required this.msg, required this.user, required this.cubit, required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
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
          child:SingleChildScrollView(
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
                    validator: (text){
                      if(text!.isEmpty){
                        return "Enter username";
                      }
                      return null;
                    },
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
                    validator: (text){
                      if(text!.isEmpty){
                        return "Enter message";
                      }
                      return null;
                    },
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
                    validator: (text){
                      if(text!.isEmpty){
                        return "Enter state";
                      }
                      return null;
                    },
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
        ),
        actions: [
          TextButton(
              onPressed: () {
                if(formKey.currentState!.validate()){
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
                }

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
    );
  }
}
