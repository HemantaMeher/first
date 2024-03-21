import 'package:flutter/material.dart';
class SliverBar extends StatefulWidget {
  const SliverBar({super.key});

  @override
  State<SliverBar> createState() => _SliverBarState();
}

class _SliverBarState extends State<SliverBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: BeveledRectangleBorder(
              side: BorderSide(color: Colors.blue,width: 1),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
            ),
            actions: [
              Icon(Icons.account_balance_outlined),
              Icon(Icons.account_balance_outlined),
            ],
            backgroundColor: Colors.pink,
            floating: true,
            pinned: true,
            snap: true,
            expandedHeight: 200,
            // collapsedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                // color: Colors.blue,
                child: Text("Sliver App Bar"),
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              color: index.isOdd? Colors.white : Colors.grey,
              height: 100,
              child: Center(child: Text('${index}',textScaleFactor: 3,),),
            );
          },
          childCount: 20)
          )
        ],
      ),
    );
  }
}