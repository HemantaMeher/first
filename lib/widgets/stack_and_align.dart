import 'package:flutter/material.dart';

class StackAndAlignScreen extends StatefulWidget {
  const StackAndAlignScreen({super.key});

  @override
  State<StackAndAlignScreen> createState() => _StackAndAlignScreenState();
}

class _StackAndAlignScreenState extends State<StackAndAlignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack And Align'),),
      body: Stack(
        children: [

          // Using Default Positioned Widget
/*
           Align(
            alignment: Alignment.topLeft,
            child: Text('Top Left'),
          ),

          Align(
            alignment: Alignment.topRight,
            child: Text('Top Right'),
          ),

          Align(
            alignment: Alignment.center,
            child: Text('Center'),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Text('Top Center'),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Text('Bottom Left'),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Text('Bottom Center'),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: Text('Bottom Right'),
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Text('Center Left'),
          ),

          Align(
            alignment: Alignment.centerRight,
            child: Text('Center Right'),
          ),
*/

          // Using Y and X Axis
          /*
            Align(
              alignment: Alignment(0, 0),
              child: Text('0 , 0'),
            ),

            
            Align(
              alignment: Alignment(0, 1),
              child: Text('0 , 1'),
            ),

            
            Align(
              alignment: Alignment(1, 0),
              child: Text('1 , 0'),
            ),

            
            Align(
              alignment: Alignment(0, -1),
              child: Text('0 , -1'),
            ),

            
            Align(
              alignment: Alignment(-1, 0),
              child: Text('-1 , 0'),
            ),

            
            Align(
              alignment: Alignment(1, 1),
              child: Text('1 , 1'),
            ),

            
            Align(
              alignment: Alignment(-1,-1),
              child: Text('-1 , -1'),
            ),

            
            Align(
              alignment: Alignment(1, -1),
              child: Text('1 , -1'),
            ),

            
            Align(
              alignment: Alignment(-1, 1),
              child: Text('-1 , 1'),
            ),

            
            Align(
              alignment: Alignment(0, 0.5),
              child: Text('0 , 0.5'),
            ),

            
            Align(
              alignment: Alignment(0, -0.5),
              child: Text('0 , -0.5'),
            ),
            
            
            Align(
              alignment: Alignment(1, -0.5),
              child: Text('1 , -0.5'),
            ),

            
            Align(
              alignment: Alignment(1, 0.5),
              child: Text('1 , 0.5'),
            ),

            
            Align(
              alignment: Alignment(-1, 0.5),
              child: Text('-1 , 0.5'),
            ),

            
            Align(
              alignment: Alignment(-1, -0.5),
              child: Text('-1 , -0.5'),
            ),
            */

          // Fractional Offset
          /*
          Align(
            alignment: FractionalOffset(0, 0),
            child: Text('0 , 0'),
          ),

          Align(
            alignment: FractionalOffset(0, 0.25),
            child: Text('0 , 0.25'),
          ),

          Align(
            alignment: FractionalOffset(0, 0.5),
            child: Text('0 , 0.5'),
          ),

          Align(
            alignment: FractionalOffset(0, 0.75),
            child: Text('0 , 0.75'),
          ),

          Align(
            alignment: FractionalOffset(0, 1),
            child: Text('0 , 1'),
          ),

          Align(
            alignment: FractionalOffset(1, 0),
            child: Text('1 , 0'),
          ),

          Align(
            alignment: FractionalOffset(1, 0.25),
            child: Text('1 , 0.25'),
          ),

          Align(
            alignment: FractionalOffset(1, 0.5),
            child: Text('1 , 0.5'),
          ),

          Align(
            alignment: FractionalOffset(1, 0.75),
            child: Text('1 , 0.75'),
          ),

          Align(
            alignment: FractionalOffset(1, 1),
            child: Text('1 , 1'),
          ),

           Align(
            alignment: FractionalOffset(0.5, 0),
            child: Text('0.5 , 0'),
          ),

          Align(
            alignment: FractionalOffset(0.5, 0.25),
            child: Text('0.5 , 0.25'),
          ),

          Align(
            alignment: FractionalOffset(0.5, 0.5),
            child: Text('0.5 , 0.5'),
          ),

          Align(
            alignment: FractionalOffset(0.5, 0.75),
            child: Text('0.5 , 0.75'),
          ),

          Align(
            alignment: FractionalOffset(0.5, 1),
            child: Text('0.5 , 1'),
          ),
          */

          // Positione Widget
          Positioned(
            top: 100,
            left: 120,
            child: Text('Hemanta',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          ),

          Positioned(
            bottom: 100,
            right: 120,
            child: Text('Meher',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          )

        ],
      ),
    );
  }
}