import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DataTableScreen extends StatefulWidget {
  const DataTableScreen({super.key});

  @override
  State<DataTableScreen> createState() => _DataTableScreenState();
}

class _DataTableScreenState extends State<DataTableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Table'),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.purple.shade300,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    dividerThickness: 5,
                    columns: const [
                      DataColumn(label: Text('No')),
                      DataColumn(label: Text('FrameWork')),
                      DataColumn(label: Text('Language')),
                      DataColumn(label: Text('Purpose'))
                    ],
                    rows: const [
                      DataRow(cells: [
                        DataCell(Text('1')),
                        DataCell(Text('Flutter')),
                        DataCell(Text('dart')),
                        DataCell(Text('Android,ios'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('2')),
                        DataCell(Text('.net')),
                        DataCell(Text('C#')),
                        DataCell(Text('Web'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('1')),
                        DataCell(Text('Flutter')),
                        DataCell(Text('dart')),
                        DataCell(Text('Android,ios'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('2')),
                        DataCell(Text('.net')),
                        DataCell(Text('C#')),
                        DataCell(Text('Web'))
                      ]),
                    ],
                  ),
                ),
      
                SizedBox(height: 20,),
      
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columnSpacing: 100,
                    dataRowHeight: 50,
                    headingRowHeight: 50,
                    border: TableBorder.all(
                      color: Colors.red,
                      width: 4,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    columns: const [
                      DataColumn(label: Text('No')),
                      DataColumn(label: Text('Framework')),
                      DataColumn(label: Text('Language')),
                      DataColumn(label: Text('Purpose'))
                    ],
                    rows: const [
                      DataRow(cells: [
                        DataCell(Text("1")),
                        DataCell(Text("Flutter")),
                        DataCell(Text("Dart")),
                        DataCell(Text("Android,Ios")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("2")),
                        DataCell(Text("Android")),
                        DataCell(Text("Java")),
                        DataCell(Text("Android")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("3")),
                        DataCell(Text("Jupiter")),
                        DataCell(Text("Python")),
                        DataCell(Text("Web")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("4")),
                        DataCell(Text("Laraval")),
                        DataCell(Text("Php")),
                        DataCell(Text("Server")),
                      ]),
                    ]
                  ),
                ),
      
                const SizedBox(height: 20,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columnSpacing: 20,
                    dataRowHeight: 40,
                    headingRowHeight: 40,
                    horizontalMargin: 100,
                    border: TableBorder.all(color: Colors.purple,width: 3,
                    borderRadius: BorderRadius.circular(10)),
                    dataRowColor: MaterialStateProperty.all(Colors.orange),
                    headingRowColor: MaterialStateProperty.all(Colors.green),
                    columns: const [
                       DataColumn(
                      label: Text(''
                          'No'),
                    ),
                    DataColumn(
                      label: Text('Framwork'),
                    ),
                    DataColumn(
                      label: Text('Language'),
                    ),
                    DataColumn(
                      label: Text('Purpose'),
                    ),
                    ],
                    rows: const [
                      DataRow(cells: [
                        DataCell(Text("1")),
                        DataCell(Text("Flutter")),
                        DataCell(Text("Dart")),
                        DataCell(Text("Android,Ios")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("2")),
                        DataCell(Text("Android")),
                        DataCell(Text("Java")),
                        DataCell(Text("Android")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("3")),
                        DataCell(Text("Jupiter")),
                        DataCell(Text("Python")),
                        DataCell(Text("Web")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("4")),
                        DataCell(Text("Laraval")),
                        DataCell(Text("Php")),
                        DataCell(Text("Server")),
                      ]),
                    ],
                  ),
                ),

                const SizedBox(height: 20,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columnSpacing: 20,
                    dataRowHeight: 40,
                    headingRowHeight: 40,
                    horizontalMargin: 100,
                    border: TableBorder.all(color: Colors.pink,width: 2,
                    borderRadius: BorderRadius.circular(10)),
                    dataRowColor: MaterialStateProperty.all(Colors.yellow),
                    headingRowColor: MaterialStateProperty.all(Colors.green),
                    dataTextStyle: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),
                    headingTextStyle: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),

                    columns: const [
                       DataColumn(
                      label: Text(''
                          'No'),
                    ),
                    DataColumn(
                      label: Text('Framwork'),
                    ),
                    DataColumn(
                      label: Text('Language'),
                    ),
                    DataColumn(
                      label: Text('Purpose'),
                    ),
                    ],
                    rows: const [
                      DataRow(cells: [
                        DataCell(Text("1")),
                        DataCell(Text("Flutter")),
                        DataCell(Text("Dart")),
                        DataCell(Text("Android,Ios")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("2")),
                        DataCell(Text("Android")),
                        DataCell(Text("Java")),
                        DataCell(Text("Android")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("3")),
                        DataCell(Text("Jupiter")),
                        DataCell(Text("Python")),
                        DataCell(Text("Web")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text("4")),
                        DataCell(Text("Laraval")),
                        DataCell(Text("Php")),
                        DataCell(Text("Server")),
                      ]),
                    ],
                  ),
                )
      
              ]),
        ),
      ),
    );
  }
}
