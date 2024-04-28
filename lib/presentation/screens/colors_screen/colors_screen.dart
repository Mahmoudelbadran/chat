import 'package:ahmedtestapp/business_logic/home_logic/home_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class ColorsScreen extends StatefulWidget {
  const ColorsScreen({Key? key}) : super(key: key);

  @override
  State<ColorsScreen> createState() => _ColorsScreenState();
}

class _ColorsScreenState extends State<ColorsScreen> {
  @override
  Widget build(BuildContext context) {
    HomeLogic cubit = HomeLogic.get(context);
    return BlocBuilder<HomeLogic, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: cubit.backGround,
          floatingActionButton: SizedBox(
              width: 100.w,
              height: 10.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cubit.dataColors.length,
                  itemBuilder: (context, index) =>
                      InkWell(
                        onTap: () => cubit.changeColor(index: index),
                        child: Container(
                          width: 20.w,
                          height: 10.h,
                          color: cubit.dataColors[index],

                        ),
                      ))
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation
              .centerDocked,
        );
      },
    );
  }
}
