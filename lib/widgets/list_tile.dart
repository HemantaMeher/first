import 'package:flutter/material.dart';

class ListTileScreen extends StatefulWidget {
  const ListTileScreen({Key? key}) : super(key: key);

  @override
  State<ListTileScreen> createState() => _ListTileScreenState();
}

class _ListTileScreenState extends State<ListTileScreen> {
  bool enable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Emoty ListTile'),
                  ListTile(
                    tileColor: Colors.red,
                    style: ListTileStyle.drawer,
                  ),
                  SizedBox(height: 10,),
                  // ListTile(
                  //   tileColor: Colors.red,
                  //   style: ListTileStyle.list,
                  // ),
                  Text('ListTile With leading'),
                  SizedBox(height: 10,),
                  ListTile(
                    tileColor: Colors.white,
                    // leading: Icon(Icons.person),
                    // leading: Text('Hello'),
                    leading: Image.asset('assets/img.jpg'),
                  ),
                  Text('ListTile With title, SubTitle & Tralling'),
                  SizedBox(height: 10,),
                  ListTile(
                    tileColor: Colors.white,
                    leading: Image.asset('assets/hemanta.jpg'),
                    title: Text('Hemanta'),
                    subtitle: Text('814403425'),
                    trailing: Icon(Icons.add),
                  ),
                  SizedBox(height: 10,),
                  Text('ListTile With isThree line'),
                  ListTile(
                    tileColor: Colors.white,
                    leading: Image.asset('assets/hemanta.jpg'),
                    title: Text('Hemanta'),
                    subtitle: Text('814403425\n Hemanta Kumar Meher \n hello how are you\n are you fine or not\n if you are not fine \n Then myou can tell me'),
                    trailing: Icon(Icons.add),
                    isThreeLine: true,
                  ),
                  SizedBox(height: 10,),
                  Text('ListTile With Shape'),
                  ListTile(
                    tileColor: Colors.purple.shade100,
                    leading: Image.asset('assets/hemanta.jpg'),
                    title: Text('Hemanta'),
                    subtitle: Text('A single fixed-height row that typically contains some text as well as a leading or trailing icon.'),
                    trailing: Icon(Icons.add),
                    isThreeLine: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: Colors.purpleAccent,
                        width: 3,
                      )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('ListTile With Shape'),
                  ListTile(
                    tileColor: Colors.purple.shade100,
                    contentPadding: EdgeInsets.all(30),
                    leading: Image.asset('assets/hemanta.jpg'),
                    title: Text('Hemanta'),
                    subtitle: Text('A single fixed-height row that typically contains some text as well as a leading or trailing icon.'),
                    trailing: Icon(Icons.add),
                    isThreeLine: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: Colors.purpleAccent,
                          width: 3,
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('ListTile With TextColor and minVertical Padding'),
                  ListTile(
                    tileColor: Colors.purple.shade100,
                    textColor: Colors.red,
                    minVerticalPadding: 50,
                    leading: Image.asset('assets/hemanta.jpg'),
                    title: Text('Hemanta'),
                    subtitle: Text('A single fixed-height row that typically contains some text as well as a leading or trailing icon.'),
                    trailing: Icon(Icons.add),
                    isThreeLine: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: Colors.purpleAccent,
                          width: 3,
                        )
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('ListTile With All Color'),
                  ListTile(
                    tileColor: Colors.white,
                    // contentPadding: EdgeInsets.all(30),
                    leading: Image.asset('assets/hemanta.jpg'),
                    title: Text('Hemanta'),
                    trailing: Icon(Icons.add),
                    iconColor: Colors.purpleAccent,
                    selected: true,
                    selectedTileColor: Colors.yellowAccent,
                    selectedColor: Colors.red,
                    enabled: enable,
                    ),
                  SizedBox(height: 10,),
                  Text('ListTile With onTap function'),
                  ListTile(
                    tileColor: Colors.white,
                    // contentPadding: EdgeInsets.all(30),
                    leading: Image.asset('assets/hemanta.jpg'),
                    title: Text('Hemanta'),
                    trailing: Icon(Icons.add),
                    iconColor: Colors.purpleAccent,
                    selected: true,
                    selectedTileColor: Colors.yellowAccent,
                    selectedColor: Colors.red,
                    enabled: enable,
                    onTap: () {
                      setState(() {
                        enable = false;
                      });
                    },
                    onLongPress: () {
                      print('Long press detected');
                    },
                  ),



                ],
              ),
          ),
        ),
      ),
    );
  }
}
