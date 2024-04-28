import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_state.dart';
class HomeLogic extends Cubit<HomeState> {
  HomeLogic() : super(AppIntialStates());

  static HomeLogic get(context) => BlocProvider.of<HomeLogic>(context);
  List<Map> data=[
    {
      "name":"ahmed omar",
      "msg":"Hello,ahmed!",
      "image":"images/profile.jpg",
      "state":true
    },
    {
      "name":"Sara ahmed",
      "msg":"Hello,ahmed!",
      "image":"images/profile.jpg",
      "state":false
    },
    {
      "name":"Mahmoud badran",
      "msg":"Hello,sara!",
      "image":"images/profile.jpg",
      "state":true
    },  {
      "name":"mostafa",
      "msg":"Hello,sara!",
      "image":"images/profile.jpg",
      "state":false
    }

  ];
List<Color> dataColors=[
  Colors.blue,
  Colors.red,
  Colors.yellow,
  Colors.black,
  Colors.white
];
Color backGround=Colors.white;
// function change color
  void changeColor({required int index}){
    backGround=dataColors[index];
    emit(ChangeColorsState());
  }
  // add user
void addChat({required String name,required String msg,required String image,required bool state}){
  data.add({
    "name":name,
    "msg":msg,
    "image":image,
    "state":state
  });
  emit(AddState());
}
// delete user
  void deleteUser({required int index}){
  data.removeAt(index);
  emit(DeleteUserState());
  }

String image="images/x.png";
void games(int index){
  if(index==0){
   image="images/x.png";
  }else if(index==1){
    image="images/o.png";
  }
}




}