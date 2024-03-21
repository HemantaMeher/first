import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        // width: 200,
        backgroundColor: Colors.cyanAccent.withOpacity(0.2),
        shadowColor: Colors.grey,
        // elevation: 300,
        // surfaceTintColor: Colors.yellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80),
          side: BorderSide(
            color: Colors.cyan,
            width: 5
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.yellow.withOpacity(.5),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        child: Icon(Icons.person,size: 70,),
                      ),
                      Text('Hemanta Meher',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                    ],
                  )
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: Text('H',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                ),
                title: Text('Hemanta',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white.withOpacity(.7)),),
                subtitle: Text('Hello how are you',style: TextStyle(color: Colors.deepOrangeAccent.withOpacity(.7))),
                trailing: Icon(Icons.add,size: 30,color: Colors.white,),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.cyanAccent,
                  child: Text('E',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                ),
                title: Text('Hemanta',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white.withOpacity(.7)),),
                subtitle: Text('Hello how are you',style: TextStyle(color: Colors.deepOrangeAccent.withOpacity(.7))),
                trailing: Icon(Icons.add,size: 30,color: Colors.white,),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text('M',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                ),
                title: Text('Hemanta',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white.withOpacity(.7)),),
                subtitle: Text('Hello how are you',style: TextStyle(color: Colors.deepOrangeAccent.withOpacity(.7))),
                trailing: Icon(Icons.add,size: 30,color: Colors.white,),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: Text('A',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                ),
                title: Text('Hemanta',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white.withOpacity(.7)),),
                subtitle: Text('Hello how are you',style: TextStyle(color: Colors.deepOrangeAccent.withOpacity(.7))),
                trailing: Icon(Icons.add,size: 30,color: Colors.white,),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text('N',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                ),
                title: Text('Hemanta',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white.withOpacity(.7)),),
                subtitle: Text('Hello how are you',style: TextStyle(color: Colors.deepOrangeAccent.withOpacity(.7))),
                trailing: Icon(Icons.add,size: 30,color: Colors.white,),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                  child: Text('T',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                ),
                title: Text('Hemanta',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white.withOpacity(.7)),),
                subtitle: Text('Hello how are you',style: TextStyle(color: Colors.deepOrangeAccent.withOpacity(.7))),
                trailing: Icon(Icons.add,size: 30,color: Colors.white,),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text('A',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                ),
                title: Text('Hemanta',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white.withOpacity(.7)),),
                subtitle: Text('Hello how are you',style: TextStyle(color: Colors.deepOrangeAccent.withOpacity(.7))),
                trailing: Icon(Icons.add,size: 30,color: Colors.white,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
