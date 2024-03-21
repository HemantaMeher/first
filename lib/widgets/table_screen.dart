import 'package:flutter/material.dart';
class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Table Screen'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            border: TableBorder.all(
              color: Colors.purpleAccent,
              width: 2,
              borderRadius: BorderRadius.circular(5)
            ),
              
            children: List.generate(100, (index) => TableRow(
              children: [
                Center(child: Text('${index+1}')),
                Center(child: Text('Hemanta')),
                Center(child: Text('Kumar')),
                Center(child: Text('Meher')),
              ]
            )),
            
            /*
            children: [
              TableRow(
                decoration: BoxDecoration(
                  color: Colors.yellow
                ), 
                children: [
                  Container(
                    child: Center(
                      child: Icon(Icons.flutter_dash,color: Colors.blue,size: 50,),
                    ),
                  ),
                  Container(height:50,child: Center(child: Text('Name'),)),
                  Container(height:50,child: Center(child: Text('Middle'),)),
                  Container(height:50,child: Center(child: Text('Last'),)),
                ]
              ),
              TableRow(
                children: [
                  Center(
                    child: Text('1')
                  ),
                  Center(child: Text('Hemanta'),),
                  Center(child: Text('Kumar'),),
                  Center(child: Text('Meher'),)
                ]
              ),
              TableRow(
                children: [
                  Center(
                    child: Text('1')
                  ),
                  Center(child: Text('Hemanta'),),
                  Center(child: Text('Kumar'),),
                  Center(child: Text('Meher'),)
                ]
              ),
              TableRow(
                children: [
                  Center(
                    child: Text('1')
                  ),
                  Center(child: Text('Hemanta'),),
                  Center(child: Text('Kumar'),),
                  Center(child: Text('Meher'),)
                ]
              ),
              TableRow(
                children: [
                  Center(
                    child: Text('1')
                  ),
                  Center(child: Text('Hemanta'),),
                  Center(child: Text('Kumar'),),
                  Center(child: Text('Meher'),)
                ]
              ),
              TableRow(
                children: [
                  Center(
                    child: Text('1')
                  ),
                  Center(child: Text('Hemanta'),),
                  Center(child: Text('Kumar'),),
                  Center(child: Text('Meher'),)
                ]
              ),
              TableRow(
                children: [
                  Center(
                    child: Text('1')
                  ),
                  Center(child: Text('Hemanta'),),
                  Center(child: Text('Kumar'),),
                  Center(child: Text('Meher'),)
                ]
              ),
              
            ],
            */
          ),
        ),
      ),

    );
  }
}