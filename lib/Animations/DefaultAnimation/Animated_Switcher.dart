import 'package:flutter/material.dart';

class AnimatedSwitcherScreen extends StatefulWidget {
  const AnimatedSwitcherScreen({super.key});

  @override
  State<AnimatedSwitcherScreen> createState() => _AnimatedSwitcherScreenState();
}

class _AnimatedSwitcherScreenState extends State<AnimatedSwitcherScreen> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Switcher"),
      ),
      body: Center(
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          child: Text(
            '${_count}',
            key: ValueKey<int>(_count),
            style: TextStyle(fontSize: 40.0),
          ),
          // switchInCurve: Curves.bounceInOut,
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _count++;
        });
      }, child: Icon(Icons.add),),
    );
  }
}

