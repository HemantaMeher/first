import 'package:flutter/material.dart';
class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View'),),
      body: ListView(
        shrinkWrap: true,
        // itemExtent: 150,
        // physics: AlwaysScrollableScrollPhysics(),
        // physics: NeverScrollableScrollPhysics(),
        // reverse: true,
        padding: EdgeInsets.all(10),
        // scrollDirection: Axis.horizontal,
        children: [
          CircleAvatar(
            child: Icon(Icons.person,size: 70,),
            radius: 50,
          ),
          Text('Hemanta Meher',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a gallery of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum,It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
