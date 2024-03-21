import 'package:flutter/material.dart';
class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen'),),
      body: Container(
        color: Colors.cyanAccent,
        child: Center(child: Text('First Screen',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
