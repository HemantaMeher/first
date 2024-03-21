import 'package:flutter/material.dart';

class GetxTransition extends StatefulWidget {
  const GetxTransition({super.key});

  @override
  State<GetxTransition> createState() => _GetxTransitionState();
}

class _GetxTransitionState extends State<GetxTransition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(title: Text('Getx'),backgroundColor: Colors.pink,),
      body: Center(
        child: Text('Getx',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
