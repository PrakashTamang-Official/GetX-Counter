import 'package:get/get.dart';

class CountController extends GetxController{
 RxInt count = 5.obs;

  //function
  incrementCounter(){
    count.value++;
    return (count.value);
  }

  decrementCounter(){
    count.value--;
    return (count.value);
  }

}