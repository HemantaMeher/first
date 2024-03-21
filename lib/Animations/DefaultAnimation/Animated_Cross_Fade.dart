import 'package:flutter/material.dart';

class AnimatedCrossFadeScreen extends StatefulWidget {
  const AnimatedCrossFadeScreen({super.key});

  @override
  State<AnimatedCrossFadeScreen> createState() =>
      _AnimatedCrossFadeScreenState();
}

class _AnimatedCrossFadeScreenState extends State<AnimatedCrossFadeScreen> {
  bool _isFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animatrd Cross Fade'),
      ),
      body: Center(
        child: AnimatedCrossFade(
            firstChild: Container(
              height: 200,
              width: 200,
              color: Colors.cyan,
              child: Center(
                child: Text(
                  'First',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
            secondChild: Container(
              height: 200,
              width: 200,
              color: Colors.purple,
              child: Center(
                child: Text(
                  'Second',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
            crossFadeState: _isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(seconds: 3)),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _isFirst = !_isFirst;
        });
      },
      child: Icon(Icons.play_arrow),
      ),
    );
  }
}
