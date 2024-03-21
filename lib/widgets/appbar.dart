import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarWidgets extends StatefulWidget {
  const AppBarWidgets({super.key});

  @override
  State<AppBarWidgets> createState() => _AppBarWidgetsState();
}

class _AppBarWidgetsState extends State<AppBarWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        // automaticallyImplyLeading: false,
        title: Text('AppBar'),
        // centerTitle: true,
        leading: Icon(Icons.leaderboard),
        // leadingWidth: 100,
        // titleSpacing: 149,
        actions: [
          Icon(Icons.home),
          Icon(Icons.access_alarm),
          Icon(Icons.person,color: Colors.blue,),
          Center(child: Text('Hello'))
        ],
        elevation: 20,
        shadowColor: Colors.cyan,
        // toolbarHeight: 150,
        // toolbarOpacity: .4,
        actionsIconTheme: IconThemeData(color: Colors.red),
        toolbarTextStyle: TextStyle(color: Colors.brown),
        titleTextStyle: TextStyle(color: Colors.green),
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.blue),
        /* shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          // borderRadius: BorderRadius.all(Radius.circular(35))
          // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35),bottomRight: Radius.circular(35))
          side: BorderSide(color: Colors.red,width: 5)
        ),*/
        bottom: PreferredSize(child: Container(
          color: Colors.green.shade300,
          height: 50,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){}, child: Text('1')),
              ElevatedButton(onPressed: (){}, child: Text('2')),
              ElevatedButton(onPressed: (){}, child: Text('3')),
            ],
          ),
        ), preferredSize: Size(400, 50)),
        
        
        /* BeveledRectangleBorder(
          // borderRadius: BorderRadius.circular(35)
          // borderRadius: BorderRadius.all(Radius.circular(35))
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35),bottomRight: Radius.circular(35))
        ) */
        
        /* RoundedRectangleBorder(
          // borderRadius: BorderRadius.circular(35)
          // borderRadius: BorderRadius.all(Radius.circular(30)),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35),bottomRight: Radius.circular(35))
        ),*/
      ),
    );
  }
}