import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountController extends GetxController{
 RxInt count = 5.obs;
 Rx<Color> containerColor = const Color.fromARGB(255, 34, 186, 62).obs;
  //function
  incrementCounter(){
    count.value++;
    return (count.value);
  }

  decrementCounter(){
    count.value--;
    return (count.value);
  }

  changeColor(){
    containerColor.value = Colors.red;
    return(containerColor.value);
  }



}