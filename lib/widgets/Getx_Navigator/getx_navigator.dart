import 'package:first/widgets/Getx_Navigator/gets_transition.dart';
import 'package:first/widgets/Getx_Navigator/string_passing.dart';
import 'package:first/widgets/NavigatorScreen/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'list_passing.dart';
import 'map_passing.dart';

class GetxNavigatorScreen extends StatefulWidget {
  const GetxNavigatorScreen({super.key});

  @override
  State<GetxNavigatorScreen> createState() => _GetxNavigatorScreenState();
}

class _GetxNavigatorScreenState extends State<GetxNavigatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Getx Navigator'),backgroundColor: Colors.cyan,),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
      
              ElevatedButton(onPressed: () {
                Get.to( () => FirstScreen());
              }, child: Text('Getx Routes')),
      
              ElevatedButton(onPressed: () {
                Get.to(()=> StringPassing(), arguments: 'Hello');
              }, child: Text('String routs')),
      
              ElevatedButton(onPressed: () {
                Get.to(()=> ListPassing(), arguments: ['Hii','Hello']);
              }, child: Text('List Routs')),
              
              ElevatedButton(onPressed: () {
                Get.to(()=> MapPassing(), arguments: [
                  {'first': 'first data'},
                  {'second': 'Second data'}
                ]);
              }, child: Text('Map Route')),
      
              ElevatedButton(onPressed: () {
                Get.to(
                  ()=> GetxTransition(),
                  transition: Transition.circularReveal,
                  duration: Duration(seconds: 3)
                );
              }, child: Text('Getx Transition circularReveal')),
      
              ElevatedButton(onPressed: () {
                Get.to(
                  ()=> GetxTransition(),
                  transition: Transition.cupertino,
                  duration: Duration(seconds: 3)
                );
              }, child: Text('Getx Transition cupertino')),
      
              ElevatedButton(onPressed: () {
                Get.to(
                  ()=> GetxTransition(),
                  transition: Transition.cupertinoDialog,
                  duration: Duration(seconds: 3)
                );
              }, child: Text('Getx Transition cupertinoDialog')),
      
              ElevatedButton(onPressed: () {
                Get.to(
                  ()=> GetxTransition(),
                  transition: Transition.downToUp,
                  duration: Duration(seconds: 3)
                );
              }, child: Text('Getx Transition downToUp')),
      
              ElevatedButton(onPressed: () {
                Get.to(
                  ()=> GetxTransition(),
                  transition: Transition.fade,
                  duration: Duration(seconds: 3)
                );
              }, child: Text('Getx Transition fade')),
      
              ElevatedButton(onPressed: () {
                Get.to(
                  ()=> GetxTransition(),
                  transition: Transition.fadeIn,
                  duration: Duration(seconds: 3)
                );
              }, child: Text('Getx Transition fadeIn')),
      
              ElevatedButton(onPressed: () {
                Get.to(
                  ()=> GetxTransition(),
                  transition: Transition.leftToRight,
                  duration: Duration(seconds: 3)
                );
              }, child: Text('Getx Transition leftToRight')),
      
              ElevatedButton(onPressed: () {
                Get.to(
                  ()=> GetxTransition(),
                  transition: Transition.leftToRightWithFade,
                  duration: Duration(seconds: 3)
                );
              }, child: Text('Getx Transition leftToRightWithFade')),
      
              ElevatedButton(onPressed: () {
                Get.to(
                  ()=> GetxTransition(),
                  transition: Transition.native,
                  duration: Duration(seconds: 3)
                );
              }, child: Text('Getx Transition native')),
      
              ElevatedButton(onPressed: () {
                Get.to(
                  ()=> GetxTransition(),
                  transition: Transition.noTransition,
                  duration: Duration(seconds: 3)
                );
              }, child: Text('Getx Transition noTransition')),
      
              ElevatedButton(onPressed: () {
                Get.to(
                  ()=> GetxTransition(),
                  transition: Transition.rightToLeft,
                  duration: Duration(seconds: 3)
                );
              }, child: Text('Getx Transition rightToLeft')),
      
              ElevatedButton(onPressed: () {
                Get.to(
                  ()=> GetxTransition(),
                  transition: Transition.rightToLeftWithFade,
                  duration: Duration(seconds: 3)
                );
              }, child: Text('Getx Transition rightToLeftWithFade')),
      
              ElevatedButton(onPressed: () {
                Get.to(
                  ()=> GetxTransition(),
                  transition: Transition.size,
                  duration: Duration(seconds: 3)
                );
              }, child: Text('Getx Transition size')),
      
              ElevatedButton(onPressed: () {
                Get.to(
                  ()=> GetxTransition(),
                  transition: Transition.topLevel,
                  duration: Duration(seconds: 3)
                );
              }, child: Text('Getx Transition topLevel')),

              ElevatedButton(onPressed: () {
                Get.to(
                  ()=> GetxTransition(),
                  transition: Transition.upToDown,
                  duration: Duration(seconds: 3)
                );
              }, child: Text('Getx Transition upToDown')),
              
              ElevatedButton(onPressed: () {
                Get.to(
                  ()=> GetxTransition(),
                  transition: Transition.zoom,
                  duration: Duration(seconds: 3)
                );
              }, child: Text('Getx Transition zoom')),


      
      
      
            ],
          ),
        ),
      ),
    );
  }
}
