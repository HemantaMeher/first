import 'package:flutter/material.dart';

import 'AnimatedContainer/AnimationContainerOne.dart';
import 'AnimatedContainer/AnimationContainerTwo.dart';
import 'Animated_Button_InkWell.dart';
import 'Animation_Icon_Screen.dart';
import 'Custom_Widget.dart';
import 'DefaultAnimation/Animation_Home.dart';

class AnimationMainScreen extends StatefulWidget {
  const AnimationMainScreen({super.key});

  @override
  State<AnimationMainScreen> createState() => _AnimationMainScreenState();
}

class _AnimationMainScreenState extends State<AnimationMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomWidget(
              name: "Animation",
              routewidget: AnimationContainerHome(),
            ),
            // CustomWidget(
            //   name: "AnimationBuilder",
            //   routewidget: AnimationBuilderHome(),
            // ),
            // CustomWidget(
            //   name: "Hero Animation",
            //   routewidget: HeroAnimationHome(),
            // ),
            CustomWidget(
              name: "AnimationIcon",
              routewidget: AnimatedIconScreen(),
            ),
            CustomWidget(
                name: "AnimatedButtonInkWell",
                routewidget: AnimatedButtonInkWell()),
            CustomWidget(
                name: "Animated Container",
                routewidget: AnimatedContainerOne()),
            CustomWidget(
                name: "Animated Container Two",
                routewidget: AnimationContainerTwo()
          ),
          ],
        ),
      ),
    );
  }
}