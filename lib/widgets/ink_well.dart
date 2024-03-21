import 'package:flutter/material.dart';
class InkWelScreen extends StatefulWidget {
  const InkWelScreen({Key? key}) : super(key: key);

  @override
  State<InkWelScreen> createState() => _InkWelScreenState();
}

class _InkWelScreenState extends State<InkWelScreen> {
  double h = 100.0;
  double w = 200.0;
  bool isZoom = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('InkWell'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // InkWell(
            //   onTap: () {
            //     print('OnTap');
            //   },
            //   onDoubleTap: () {
            //     print('On Double Tap');
            //   },
            //   onLongPress: () {
            //     print('on Long Press');
            //   },
            //   child: Container(
            //     height: 100,
            //     width: 200,
            //     color: Colors.cyan,
            //     child: Center(child: Text('InkWell')),
            //   ),
            // ),
            InkWell(

              onDoubleTap: () {
                if(isZoom){
                  setState(() {
                    h = 200.0;
                    w  = 400.0;
                    isZoom = !isZoom;
                  });
                }else{
                  setState(() {
                    h = 100.0;
                    w  = 200.0;
                    isZoom = !isZoom;
                  });

                }

              },

              child: Container(
                height: h,
                width: w,
                color: Colors.cyan,
                child: Center(child: Text('InkWell')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
