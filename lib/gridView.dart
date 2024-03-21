import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 5 / 1,
                mainAxisExtent: 300),
                children: [
                  Container(color: Colors.red,child: Center(child: Text('Hemanta..',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),),
                  Container(color: Colors.green,child: Center(child: Text('Hemanta..',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),),
                  Container(color: Colors.cyan,child: Center(child: Text('Hemanta..',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),),
                  Container(color: Colors.purple,child: Center(child: Text('Hemanta..',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),),
                  Container(color: Colors.red,child: Center(child: Text('Hemanta..',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),),
                  Container(color: Colors.green,child: Center(child: Text('Hemanta..',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),),
                  Container(color: Colors.cyan,child: Center(child: Text('Hemanta..',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),),
                  Container(color: Colors.purple,child: Center(child: Text('Hemanta..',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),),
                  Container(color: Colors.red,child: Center(child: Text('Hemanta..',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),),
                  Container(color: Colors.green,child: Center(child: Text('Hemanta..',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),),
                  Container(color: Colors.cyan,child: Center(child: Text('Hemanta..',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),),
                  Container(color: Colors.purple,child: Center(child: Text('Hemanta..',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),),),
                ],
            ),
      ),
    );
  }
}
