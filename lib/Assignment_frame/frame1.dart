import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Frame1 extends StatefulWidget {
  const Frame1({super.key});

  @override
  State<Frame1> createState() => _Frame1State();
}

class _Frame1State extends State<Frame1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown.shade400,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.brown.shade800,
            title: Text('Flutter'),
            centerTitle: true,
            leading: Icon(Icons.line_axis_outlined),
            actions: [Icon(Icons.search),SizedBox(width: 10,)],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
            ),
          ),

          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      color: Color.fromARGB(255, 242, 171, 145),
                      child: Center(child: Text('Alienware',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.brown.shade800),),),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                      color: Colors.brown.shade800,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Click here',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                          SizedBox(width: 10,),
                          Icon(Icons.add_rounded,color: Colors.white,),
                          SizedBox(width: 10,),
                          Text('To Add',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                        ],
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                      color: Color.fromARGB(255, 242, 171, 145),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.green,
                            blurRadius: 8,
                            spreadRadius: 3,
                            offset: Offset(-5, 5)
                          ),
                          BoxShadow(
                            color: Colors.purple,
                            blurRadius: 8,
                            spreadRadius: 3,
                            offset: Offset(0, -3)
                          ),
                          
                        ]
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 130,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                        image: DecorationImage(image: AssetImage('assets/back.jpg',),fit: BoxFit.cover)
                        
                      ),
                      
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}