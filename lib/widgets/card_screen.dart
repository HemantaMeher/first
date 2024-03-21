import 'package:flutter/material.dart';
class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  double ev  = 5.0;
  bool eb = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card widget'),),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                tileColor: Colors.red,
              ),
              Card(
                child: ListTile(
                  tileColor: Colors.purpleAccent,
                ),
              ),
              Card(
                color: Colors.lightBlueAccent,
                child: Text('This is card'),
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.deepOrange,
                alignment: Alignment.center,
                child: Text('Hemanta'),
              ),
              Card(
                color: Colors.cyanAccent,
                child: Text('This is card \n Hemanta \n Kumar \n Meher'),
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Card(
                  color: Colors.brown,
                  margin: EdgeInsets.all(0),
                  child: Center(child: Text('Card Sized Box',style: TextStyle(color: Colors.white),),),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                child: Card(
                  color: Colors.yellow,
                  margin: EdgeInsets.all(0),
                  child: Center(child: Text('Card Container color: Color.yellow',style: TextStyle(color: Colors.white),),),
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: () {
                  if(eb == false){
                    setState(() {
                      ev = 30.0;
                      eb = true;
                    });
                  } else{
                    setState(() {
                      ev = 5.0;
                      eb = false;
                    });
                  }
                },
                child: Container(
                  height: 100,
                  width: 200,
                  child: Card(
                    color: Colors.cyanAccent,
                    elevation: ev,
                    shadowColor: Colors.purpleAccent,
                    margin: EdgeInsets.all(0),
                    child: Center(child: Text('Card Elevation and Shadow color',style: TextStyle(color: Colors.white),),),
                  ),
                ),
              ),
              SizedBox(height: 10,),
               Container(
                height: 100,
                width: 200,
                child: Card(
                  color: Colors.pink,
                  elevation: ev,
                  shadowColor: Colors.purpleAccent,
                  margin: EdgeInsets.all(0),
                  child: Center(child: Text('Card Elevation and Shadow color',style: TextStyle(color: Colors.white),),),
                  shape: BeveledRectangleBorder(
                    side: BorderSide(
                      color: Colors.yellowAccent,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20)
                  ),

                ),
              ),
              SizedBox(height: 20,),
              Card(
                color: Colors.teal,
                child: Column(
                  children: [
                    Text('Hemanta'),
                    Text('Hemanta'),
                    Text('Hemanta'),
                    Text('Hemanta'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person),
                        Icon(Icons.person),
                        Icon(Icons.person),
                        Icon(Icons.person),
                        Icon(Icons.person),
                      ],
                    ),
                    Image.asset('assets/img.jpg')
                  ],
                ),
              ),
              SizedBox(height: 20,),


            ],
          ),
        ),
      ),
    );
  }
}
