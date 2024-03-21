import 'package:flutter/material.dart';

class AnimationContainerTwo extends StatefulWidget {
  const AnimationContainerTwo({super.key});

  @override
  State<AnimationContainerTwo> createState() => _AnimationContainerTwoState();
}

class _AnimationContainerTwoState extends State<AnimationContainerTwo> {
  Alignment alignment = Alignment.topLeft;
  Color clr = Colors.pink;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    first();
  }

  void first() async{
    await Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        alignment = Alignment.topRight;
        clr = Colors.purpleAccent;
      });
    });
    second();
  }

  void second() async{
    await Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        alignment = Alignment.bottomRight;
        clr = Colors.yellow;
      });
    });
    third();
  }

  void third() async{
    await Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        alignment = Alignment.bottomLeft;
        clr = Colors.green;
      });
    });
    four();
  }

  void four() async{
    await Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        alignment = Alignment.topLeft;
        clr = Colors.white;
      });
    });
    first();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Alignment'),),
      body: AnimatedContainer(
        duration: Duration(seconds: 2),
        height: MediaQuery.of(context).size.height * 1,
        width: double.infinity,
        curve: Curves.linear,
        color: Colors.cyanAccent,
        alignment: alignment,
        child: Icon(Icons.person,size: 100,color: clr,),
      ),
    );
  }
}