import 'package:first/widgets/NavigatorScreen/anFirstScreen.dart';
import 'package:first/widgets/NavigatorScreen/first_screen.dart';
import 'package:flutter/material.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({Key? key}) : super(key: key);

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Navigator Screen'),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FirstScreen(),
                    ));
              },
              child: Text('First Screen'),
              style: TextButton.styleFrom(side: BorderSide(color: Colors.cyan)),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text('Next Screen'),
                    ),
                    body: Container(
                      color: Colors.orange,
                      child: Center(
                        child: Text(
                          'Next Screen',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  );
                }));
              },
              child: Text('Next Screen'),
              style:
                  TextButton.styleFrom(side: BorderSide(color: Colors.orange)),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Text('Second Screen Named Routing'),
              style: TextButton.styleFrom(side: BorderSide(color: Colors.pink)),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            AnFirstScreen(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          var begin = Offset(1.0, 0.0);
                          var end = Offset.zero;
                          var curve = Curves.bounceIn;
                          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                           return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                      }

                    ));
              },
              child: Text('Slide Transition'),
              style: TextButton.styleFrom(side: BorderSide(color: Colors.pink)),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
