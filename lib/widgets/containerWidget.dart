import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container'),backgroundColor: Color(0xfffc9803),),
      body: Center(
        child: Container(
          height: 200,
          width: 350,
          // color: Colors.green.shade900,
          // color: Color(0xfffc9803).withOpacity(1),
          // color: Color.fromRGBO(112, 31, 219, .8),
          decoration: BoxDecoration(
          color: Color(0xfffc9803).withOpacity(1),
          image: DecorationImage(image: AssetImage('assets/img.jpg')),
          // image: DecorationImage(image: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg')),
          
          gradient: LinearGradient(colors: [Colors.red, Colors.yellow,Colors.green],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),

          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            // BoxShadow(
            //   color: Colors.grey,
            //   blurRadius: 10,
            //   spreadRadius: 5
            // )
            BoxShadow(
              color: Colors.yellow,
              offset: Offset(0.1, 0.5),
              blurRadius: 100,
              spreadRadius: 15,
            ),
            BoxShadow(
              color: Colors.red,
              offset: Offset(0.1, 0.1),
              blurRadius: 10,
              spreadRadius: 5,
            ),
            BoxShadow(
              color: Colors.green,
              offset: Offset(5, 0.1),
              blurRadius: 10,
              spreadRadius: 5
            )
          ]

          ),

        ),
      ),
    );
  }
}