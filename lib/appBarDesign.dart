import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarDesign extends StatefulWidget {
  const AppBarDesign({super.key});

  @override
  State<AppBarDesign> createState() => _AppBarDesignState();
}

class _AppBarDesignState extends State<AppBarDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hemanta',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.pink),
        backgroundColor: Colors.pink,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
          side: BorderSide(color: Colors.pinkAccent)
        ),
        elevation: 10,
        // shadowColor: Colors.black,
      ),
    );
  }
}