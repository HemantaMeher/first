import 'package:flutter/material.dart';
class ListViewSeparatedScreen extends StatefulWidget {
  const ListViewSeparatedScreen({super.key});

  @override
  State<ListViewSeparatedScreen> createState() => _ListViewSeparatedScreenState();
}

class _ListViewSeparatedScreenState extends State<ListViewSeparatedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView.separated'),),
      body: ListView.separated(

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              color: Colors.cyanAccent,
              child: Center(child: Text('${index}',style: TextStyle(fontSize: 20),)),
            ),
          );
        },

         separatorBuilder: (context, index) {
           if(index % 2 ==0){
            return Container(height: 10,color: Colors.pink,);
           }
           else if(index == 5){
            return Container(height: 20,color: Colors.indigo,);
           }

           return Container(height: 20,color: Colors.yellow,);
         },

         itemCount: 10
        ),
    );
  }
}