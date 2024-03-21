import 'package:flutter/material.dart';
class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView'),),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          // mainAxisExtent: 200,
          // childAspectRatio: 10/5,
        ),

        // reverse: true,
        padding: EdgeInsets.all(10),
        // scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),

        children: [
          Container(
            color: Colors.red,
            child: Center(child: Text('One')),
          ),
          Container(
            color: Colors.blue,
            child: Center(child: Text('One')),
          ),
          Container(
            color: Colors.green,
            child: Center(child: Text('One')),
          ),
          Container(
            color: Colors.yellowAccent,
            child: Center(child: Text('One')),
          ),
          Container(
            color: Colors.purpleAccent,
            child: Center(child: Text('One')),
          ),
          Container(
            color: Colors.cyanAccent,
            child: Center(child: Text('One')),
          ),
          Container(
            color: Colors.red,
            child: Center(child: Text('One')),
          ),
          Container(
            color: Colors.blue,
            child: Center(child: Text('One')),
          ),
          Container(
            color: Colors.green,
            child: Center(child: Text('One')),
          ),
          Container(
            color: Colors.yellowAccent,
            child: Center(child: Text('One')),
          ),
          Container(
            color: Colors.purpleAccent,
            child: Center(child: Text('One')),
          ),
          Container(
            color: Colors.cyanAccent,
            child: Center(child: Text('One')),
          ),

        ],
      ),
    );
  }
}
