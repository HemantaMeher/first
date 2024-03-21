import 'package:flutter/material.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen'),),
      body: Container(
        color: Colors.pink,
        child: Center(child: Text('Second Screen',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
