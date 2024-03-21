import 'package:flutter/material.dart';

class AnFirstScreen extends StatefulWidget {
  const AnFirstScreen({Key? key}) : super(key: key);

  @override
  State<AnFirstScreen> createState() => _AnFirstScreenState();
}

class _AnFirstScreenState extends State<AnFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animation First Screen'),),
      body: Container(
        color: Color.fromRGBO(0, 255, 10, 1.0),
        child: Center(child: Text('Slide Transition',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
