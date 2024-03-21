import 'package:flutter/material.dart';
class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  List<String> ab = ['A','B','C','D','E','F','G'];
  List<int> num = [1,2,3,4,5,6,7,8];
  List name = [
    [
      "Hemanta",
      Colors.pinkAccent,
      Icon(Icons.ac_unit_outlined,size: 100,color: Colors.grey,),
    ],
    ["Kumar", Colors.cyanAccent, Icon(Icons.abc_outlined,size: 100,color: Colors.grey,)],
    ["Meher", Colors.yellowAccent, Icon(Icons.add_chart_rounded,size: 100,color: Colors.grey,)],
    ["Kardola", Colors.purpleAccent, Icon(Icons.add_alert,size: 100,color: Colors.grey,)],
    ["Sambalpur", Colors.limeAccent, Icon(Icons.adb,size: 100,color: Colors.grey,)]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView.builder'),),
      body: Container(
        height: 300,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
            itemCount: name.length,
            itemBuilder: (context, index) {
             return Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                  height: 200,
                  width: 200,
                  child: name[index][2],
                  color: name[index][1],
                ),
             );
            },
          ),
      )
      
      /*  ListView.builder(
        itemCount: name.length,
        itemExtent: 70,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: name[index][2],
              title: Text(name[index][0]),
              tileColor: name[index][1],
            ),
          );
        },
      )  */

     /* ListView.builder(
        itemCount: num.length,
        itemExtent: 70,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.cyanAccent,
            child: Center(child: Text(num[index].toString())),
          );
        },
      ) */

      /* ListView.builder(
        itemCount: ab.length,
        itemExtent: 70,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.cyanAccent,
            child: Center(child: Text(ab[index])),
          );
        },
      ) */


      /* ListView.builder(
        itemCount: 20,
        itemExtent: 50,
        itemBuilder: (context, index) {
          return Center(child: Text('${index}'));
      },), */
    );
  }
}