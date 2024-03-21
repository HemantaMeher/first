import 'package:flutter/material.dart';

class AnimatedListStateScreen extends StatefulWidget {
  const AnimatedListStateScreen({super.key});

  @override
  State<AnimatedListStateScreen> createState() => _AnimatedListStateScreenState();
}

class _AnimatedListStateScreenState extends State<AnimatedListStateScreen> {
  List<String> _items = ["Item 1", "Item 2", "Item 3"];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  void _addItem() {
    int index = _items.length;
    _items.add("Item ${index + 1}");
    _listKey.currentState?.insertItem(index);
  }

  void _removeItem() {
    int index = _items.length - 1;
    String removedItem = _items.removeAt(index);
    _listKey.currentState?.removeItem(
      index, 
      (context, animation) => ListTile(
        title: Text(removedItem),
        trailing: Icon(Icons.delete),
        onTap: () {
          
        },
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated List State'),),
      // body: AnimatedList(
      //   itemBuilder: (context, index, animation) {
          
      //   },
      // ),
    );
  }
}