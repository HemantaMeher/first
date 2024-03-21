import 'package:first/widgets/circle_avatar.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  double n = 10;
  String ab = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Widget'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.cyan.shade100,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(onPressed: () {}, child: Text('Text Button')),
              SizedBox(
                height: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.smart_button),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    ab = 'Abinav';
                    setState(() {});
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CircleAvatarScreen(),
                        ));
                  },
                  child: Text('Elevated Button')),
              SizedBox(
                height: 10,
              ),
              OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
              SizedBox(
                height: 10,
              ),
              FilledButton(onPressed: () {}, child: Text('Filled Button')),
              SizedBox(
                height: 10,
              ),
              Text("Text Button with Size,Background Color"),
              TextButton(
                onPressed: () {},
                child: Text('Text Button'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amber,
                  // fixedSize: Size(100, 100),
                  visualDensity: VisualDensity(horizontal: 2, vertical: 2),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Text button is allignment, foreground and backgroundcolor',
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                child: Text('Hemanta..'),
                style: TextButton.styleFrom(
                    foregroundColor: Colors.green,
                    elevation: 5,
                    shadowColor: Colors.purple,
                    backgroundColor: Colors.amber),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Text button with shape side or pading'),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                child: Text('Abinav'),
                style: TextButton.styleFrom(
                  shadowColor: Colors.red,
                  // side: BorderSide(
                  //   width: 2,
                  //   color: Colors.brown,
                  //   strokeAlign: 10,
                  //   style: BorderStyle.values[1]
                  // )
                  // padding: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.green, width: 2),
                  ),
                  foregroundColor: Colors.pink,
                  enableFeedback: true,
                  elevation: 5,
                  animationDuration: Duration(seconds: 5),
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    n = 20;
                  });
                },
                child: Text('Abinav'),
                style: TextButton.styleFrom(
                  shadowColor: Colors.red,
                  side: BorderSide(
                      width: 2,
                      color: Colors.brown,
                      strokeAlign: n,
                      style: BorderStyle.values[1]),
                  padding: EdgeInsets.all(20),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(color: Colors.green, width: 2),
                  ),
                  foregroundColor: Colors.pink,
                  enableFeedback: true,
                  elevation: 5,
                  animationDuration: Duration(seconds: 5),
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              TextButton(
                onPressed: () {},
                child: Text('Text Buttton'),
                style: TextButton.styleFrom(
                    fixedSize: Size(200, 100),
                    shadowColor: Colors.red,
                    side: BorderSide(
                        width: 2,
                        color: Colors.green,
                        style: BorderStyle.values[1]),
                    padding: EdgeInsets.all(20),
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      // side: BorderSide(color: Colors.green,width: 2),
                    ),
                    foregroundColor: Colors.pink,
                    enableFeedback: true,
                    elevation: 5,
                    animationDuration: Duration(seconds: 5),
                    backgroundColor: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                child: Text('Text Button'),
                style: TextButton.styleFrom(
                  // splashFactory: InkSplash.splashFactory,
                  splashFactory: InkRipple.splashFactory,
                  // splashFactory: InkSparkle.splashFactory,
                  // splashFactory: NoSplash.splashFactory,


                  fixedSize: Size(200, 100),
                  shadowColor: Colors.red,
                  side: BorderSide(
                    width: 2,
                    color: Colors.pink,
                  ),
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  foregroundColor: Colors.pink,
                  elevation: 5,
                  backgroundColor: Colors.white,
                ),
              ),

              SizedBox(height: 20,),
              TextButton(
                  onPressed: (){}, child: Text('Button Style'),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(200, 100)),
                  splashFactory: InkRipple.splashFactory,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  mouseCursor: MaterialStateProperty.all(MouseCursor.defer),
                  overlayColor: MaterialStateProperty.all(Colors.purple),
                  foregroundColor: MaterialStateProperty.all(Colors.green),
                  backgroundColor: MaterialStateProperty.all(Colors.brown),
                ),
              ),

              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
