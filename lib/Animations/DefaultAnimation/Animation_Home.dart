import 'package:flutter/material.dart';

import '../Custom_Widget.dart';
import 'Animated_Cross_Fade.dart';
import 'Animated_Default_Text_Style.dart';
import 'Animated_List_State.dart';
import 'Animated_Opacity.dart';
import 'Animated_Positioned_Screen.dart';
import 'Animated_Switcher.dart';
import 'Animated_Theme.dart';
import 'animated_size.dart';

class AnimationContainerHome extends StatefulWidget {
  const AnimationContainerHome({Key? key}) : super(key: key);

  @override
  State<AnimationContainerHome> createState() => _AnimationContainerHomeState();
}

class _AnimationContainerHomeState extends State<AnimationContainerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation.."),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomWidget(
                name: "Animated Positioned",
                routewidget: AnimatedPositionedScreen(),
              ),
              CustomWidget(
                  name: "Animated CrossFade",
                  routewidget: AnimatedCrossFadeScreen()),
              CustomWidget(
                  name: "Animated opacity",
                  routewidget: AnimatedOpacityScreen()),
              CustomWidget(
                  name: "Animated Swicher",
                  routewidget: AnimatedSwitcherScreen()),
              CustomWidget(
                  name: "AnimatedDefaultTextStyle",
                  routewidget: AnimatedDefaultTextStyleScreen()),
              CustomWidget(
                  name: "AnimatedListState",
                  routewidget: AnimatedListStateScreen()),
              CustomWidget(
                  name: "AnimatedTheme", routewidget: AnimatedThemeScreen()),
              CustomWidget(
                  name: "AnimatedSize", routewidget: AnimatedSizeScreen()),
              // CustomWidget(
              //     name: "AnimatedPaddingScreen",
              //     routewidget: AnimatedPaddingScreen()),
              // CustomWidget(
              //     name: "AnimatedPositionedDirectional",
              //     routewidget: AnimatedPositionedDirectionalScreen()),
              // CustomWidget(
              //     name: "AnimatedPhysicalModel",
              //     routewidget: AnimatedPhysicalModelScreen()),
              // CustomWidget(
              //     name: "AnimationController",
              //     routewidget: AnimationControllerScreen()),
              // CustomWidget(
              //     name: "AnimatedModalBarrier",
              //     routewidget: AnimatedModalBarrierWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
