import 'package:flutter/material.dart';
class GridViewBuilderScreen extends StatefulWidget {
  const GridViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<GridViewBuilderScreen> createState() => _GridViewBuilderScreenState();
}

class _GridViewBuilderScreenState extends State<GridViewBuilderScreen> {
  
  List gridWidget = [
    Container(
      color: Colors.indigo,
      child: Center(child: Text('hello'),),
    ),
    Container(
      color: Colors.cyanAccent,
      child: Center(child: Text('hello'),),
    ),
    Container(
      color: Colors.purpleAccent,
      child: Center(child: Text('hello'),),
    ),
    Container(
      color: Colors.yellowAccent,
      child: Center(child: Text('hello'),),
    ),
    Container(
      color: Colors.green,
      child: Center(child: Text('hello'),),
    ),
    Container(
      color: Colors.blue,
      child: Center(child: Text('hello'),),
    ),
    Container(
      color: Colors.red,
      child: Center(child: Text('hello'),),
    ),
    Container(
      color: Colors.cyanAccent,
      child: Center(child: Text('hello'),),
    ),

  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView.builer'),),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10
        ),
        itemCount: gridWidget.length,
        itemBuilder: (context, index) {
          // return Container(
          //   height: 100,
          //   width: 100,
          //   color: Colors.indigo,
          // );
          // return Text('${index}');
          return gridWidget[index];
        },
      ),

    );
  }
}
