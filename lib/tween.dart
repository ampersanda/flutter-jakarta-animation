import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TweenScreen extends StatefulWidget {
  @override
  createState() => _TweenScreenState();
}

class _TweenScreenState extends State<TweenScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
//  Animation<Color> animation;

  Animation<double> animation;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(duration: Duration(milliseconds: 600), vsync: this)
          ..addListener(() {
        print(animationController.value);
            setState(() {});
          });

//    animation = ColorTween(
//            begin: const Color.fromRGBO(10, 10, 10, 0.5),
//            end: const Color.fromRGBO(0, 200, 100, 0.5))
//        .animate(animationController);

    animation = CurvedAnimation(parent: animationController, curve: Curves.linear);
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
                      width: 100 + (200 * animation.value),
                      height: 100 + (200 * animation.value),
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
