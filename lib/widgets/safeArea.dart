import 'package:flutter/material.dart';

class SafeAreaScreen extends StatefulWidget {
  const SafeAreaScreen({super.key});

  @override
  State<SafeAreaScreen> createState() => _SafeAreaScreenState();
}

class _SafeAreaScreenState extends State<SafeAreaScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: SafeArea(
        // minimum: EdgeInsets.all(20),
        // minimum: EdgeInsets.only(top: 10,left: 20,right: 30,bottom: 40),
        child: Scaffold(
          body: Text('Hiiii'),
        )
      ),
    );
  }
}