import 'package:flutter/material.dart';

class Frame2 extends StatefulWidget {
  const Frame2({super.key});

  @override
  State<Frame2> createState() => _Frame2State();
}

class _Frame2State extends State<Frame2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 79, 32, 22),
        leading: const Icon(Icons.line_axis_outlined),
        actions: const [Icon(Icons.search),SizedBox(width: 10,)],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
        ),
      ),
      body: Stack(
        children: [

          Align(
            alignment: const FractionalOffset(0.06, 0.03),
            child: Container(
              height: 80,
              width: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 251, 202, 204),
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Icon(Icons.toggle_on_rounded,color: Colors.brown,size: 50,),
            )
          ),

          Align(
            alignment: const FractionalOffset(0.39, 0.17),
            child: Container(
              height: 80,
              width: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 251, 202, 204),
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Icon(Icons.toggle_on_rounded,color: Colors.brown,size: 50,),
            )
          ),

          Align(
            alignment: const FractionalOffset(0.72, 0.31),
            child: Container(
              height: 80,
              width: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 251, 202, 204),
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Icon(Icons.toggle_on_rounded,color: Colors.brown,size: 50,),
            )
          ),

          Align(
            alignment: const FractionalOffset(0.72, 0.45),
            child: Container(
              height: 80,
              width: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 251, 202, 204),
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Icon(Icons.toggle_on_rounded,color: Colors.brown,size: 50,),
            )
          ),

          Align(
            alignment: const FractionalOffset(0.39, 0.59),
            child: Container(
              height: 80,
              width: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 251, 202, 204),
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Icon(Icons.toggle_on_rounded,color: Colors.brown,size: 50,),
            )
          ),

          Align(
            alignment: const FractionalOffset(0.06, 0.73),
            child: Container(
              height: 80,
              width: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 251, 202, 204),
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Icon(Icons.toggle_on_rounded,color: Colors.brown,size: 50,),
            )
          ),

          Align(
            alignment: const FractionalOffset(0.06, 0.365),
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(width: 6,color: const Color.fromARGB(255, 79, 32, 22)),
                color: Colors.green,
                shape: BoxShape.circle,
                image: const DecorationImage(image: AssetImage('assets/sir.jpg'),fit: BoxFit.cover),
              ),
            ),
          )
          
        ],
      ),
    );
  }
}