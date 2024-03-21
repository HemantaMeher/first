import 'package:flutter/material.dart';

class IndicatorsScreen extends StatefulWidget {
  const IndicatorsScreen({super.key});

  @override
  State<IndicatorsScreen> createState() => _IndicatorsScreenState();
}

class _IndicatorsScreenState extends State<IndicatorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Indicators'),
        ),
        body: Center(
            child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .8,
                width: MediaQuery.of(context).size.width * .8,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.pink,
                  strokeWidth: 20,
                ),
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .7,
                width: MediaQuery.of(context).size.width * .7,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.pink,
                  strokeWidth: 20,
                ),
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .6,
                width: MediaQuery.of(context).size.width * .6,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.pink,
                  strokeWidth: 20,
                ),
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .5,
                width: MediaQuery.of(context).size.width * .5,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.pink,
                  strokeWidth: 20,
                ),
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width * .4,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.pink,
                  strokeWidth: 20,
                ),
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .3,
                width: MediaQuery.of(context).size.width * .3,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.pink,
                  strokeWidth: 20,
                ),
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width * .2,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.pink,
                  strokeWidth: 20,
                ),
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.width * .1,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.pink,
                  strokeWidth: 20,
                ),
              ),
            ),

            
          ],
        )));
  }
}
