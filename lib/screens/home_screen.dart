import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/controller/controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

final CountController controlBox = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 13, 103, 176),
      ),
      body: Obx(()=>Container(
        margin: EdgeInsets.all(25),
        height: Get.height * 0.8,
        width: Get.width * 0.8,
        decoration: BoxDecoration(
          color: controlBox.containerColor.value
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(()=>Text(controlBox.count.toString())),
            SizedBox(height: 15),
            ElevatedButton(onPressed: (){
              controlBox.incrementCounter();
            }, child: Icon(Icons.add)),
            SizedBox(height: 15),
            ElevatedButton(onPressed: (){
              controlBox.decrementCounter();
            }, child: Icon(Icons.remove)),
            SizedBox(height: 15),
            ElevatedButton(onPressed: (){
              controlBox.changeColor();
            }, child: Text('Change'))
          ],
        ),
      )),

    );
  }
}