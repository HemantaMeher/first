import 'package:flutter/material.dart';

class ScaffoldScreen extends StatefulWidget {
  const ScaffoldScreen({super.key});

  @override
  State<ScaffoldScreen> createState() => _ScaffoldScreenState();
}

class _ScaffoldScreenState extends State<ScaffoldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: Colors.purple.shade100,
        elevation: 30,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    child: Icon(Icons.person,size: 70),
                  ),
                ),
              ),
            ),
            Text('Hemanta Meher',style: TextStyle(color: Colors.blueAccent,fontSize: 20,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
      endDrawer: Drawer(),
      body: Center(
        child: Text('Body'),
      ),
      // floatingActionButton: Column(
      //   children: [
      //     FloatingActionButton(onPressed: () {},),
      //     FloatingActionButton(onPressed: () {},)
      //   ],
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
        BottomNavigationBarItem(icon: Icon(Icons.android), label: 'Android'),
      ]),
      bottomSheet: Container(
        color: Colors.lightGreen.shade300,
        height: 20,
        width: 400,
        child: Text('Bottom Sheet',style: TextStyle(color: Colors.purple),),
      ),
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: [
        IconButton(onPressed: (){}, icon: Icon(Icons.account_balance_outlined)),
        IconButton(onPressed: (){}, icon: Icon(Icons.cast_sharp)),
        IconButton(onPressed: (){}, icon: Icon(Icons.attach_email)),
      ],
    );
  }
}
