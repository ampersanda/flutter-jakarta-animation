import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DelayScreen extends StatefulWidget {
  @override
  createState() => _DelayScreenState();
}

class _DelayScreenState extends State<DelayScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  Animation<double> animation;
  Animation<double> delayedAnimation;

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

    delayedAnimation =
        CurvedAnimation(parent: animationController, curve: Interval(0.8, 1.0, curve: Curves.linear));
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
                  Positioned(
                    top: 320.0,
                    child: Container(
                      width: 100 + (100 * delayedAnimation.value),
                      height: 100 + (100 * delayedAnimation.value),
//                      color: animation.value,
                      color: CupertinoColors.activeOrange,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: CupertinoButton(
                    padding: EdgeInsets.all(16.0),
                    color: CupertinoColors.activeBlue,
                    onPressed: () {
                      animationController.forward();
                    },
                    child: Text('Forward'),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: CupertinoButton(
                    padding: EdgeInsets.all(16.0),
                    color: CupertinoColors.activeOrange,
                    onPressed: () {
                      animationController.reverse();
                    },
                    child: Text('Reverse'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
