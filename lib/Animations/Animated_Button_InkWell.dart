import 'package:flutter/material.dart';

class AnimatedButtonInkWell extends StatefulWidget {
  const AnimatedButtonInkWell({super.key});

  @override
  State<AnimatedButtonInkWell> createState() => _AnimatedButtonInkWellState();
}

class _AnimatedButtonInkWellState extends State<AnimatedButtonInkWell> {
  bool _iaPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Button'),),
      body: Center(
        child: InkWell(
          borderRadius: BorderRadius.circular(30.0),
          onTap: (){},
          onTapDown: (details) {
            setState(() {
              _iaPressed = true;
            });
          },
          onTapUp: (details) {
            setState(() {
              _iaPressed = false;
            });
          },
          onTapCancel: () {
            setState(() {
              _iaPressed = false;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 100),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                colors: _iaPressed ? [Colors.redAccent, Colors.pinkAccent]
                    : [Colors.pinkAccent.shade100, Colors.redAccent.shade100],
              )
            ),
            padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 16.0),
            child: Text('Press Me',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}