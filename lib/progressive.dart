import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressiveScreen extends StatefulWidget {
  @override
  createState() => _ProgressiveScreenState();
}

class _ProgressiveScreenState extends State<ProgressiveScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  Animation<double> animation;
  double sliderValue = 0.0;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(duration: Duration(milliseconds: 600), vsync: this)
          ..addListener(() {
        print(animationController.value);
            setState(() {});
          });

    animation =
        CurvedAnimation(parent: animationController, curve: Curves.linear);
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  build(context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 80.0,
                    child: Container(
                      width: 100 + (100 * animation.value),
                      height: 100 + (100 * animation.value),
//                      color: animation.value,
                      color: CupertinoColors.activeOrange,
                    ),
                  ),
                ],
              ),
            ),
            CupertinoSlider(
              value: sliderValue,
              onChanged: (value) {
                animationController.animateTo(value);

                setState(() {
                  sliderValue = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
