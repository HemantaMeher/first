import 'package:first/widgets/containerWidget.dart';
import 'package:flutter/material.dart';

class ListViewCustomScreen extends StatefulWidget {
  const ListViewCustomScreen({super.key});

  @override
  State<ListViewCustomScreen> createState() => _ListViewCustomScreenState();
}

class _ListViewCustomScreenState extends State<ListViewCustomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.costom'),
      ),
      body: SafeArea(
          child: ListView.custom(
        childrenDelegate: SliverChildListDelegate(List.generate(50, (index) {
          return Container(
            margin: EdgeInsets.all(5),
            // height: 50,
            color: Color.fromARGB(255, 33, 255, 103),
            child: Center(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContainerWidget(),
                      ));
                },
                leading: CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: Text('H'),
                ),
                title: Text('Hemanta'),
                trailing: Icon(Icons.add),
              ),
            ),
          );
        })),
      )),
    );
  }
}

class ListViewCustomScreenTow extends StatefulWidget {
  const ListViewCustomScreenTow({super.key});

  @override
  State<ListViewCustomScreenTow> createState() =>
      _ListViewCustomScreenTowState();
}

class _ListViewCustomScreenTowState extends State<ListViewCustomScreenTow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.custom Screen Two'),
      ),
      body: SafeArea(child: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate((context, index) {

          return Container(
            margin: EdgeInsets.all(5),
            // height: 50,
            color: Colors.blue,
            child: Center(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContainerWidget(),
                      ));
                },
                leading: CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: Text('H'),
                ),
                title: Text('Hemanta'),
                trailing: Icon(Icons.add),
              ),
            ),
          );

        },childCount: 20),
      )),
    );
  }
}
