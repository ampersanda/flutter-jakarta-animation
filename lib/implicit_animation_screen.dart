import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImplicitlyAnimationScreen extends StatefulWidget {
  @override
  createState() => _ImplicitlyAnimationScreenState();
}

// AnimatedContainer
// AnimatedPadding
// AnimatedCrossFade
// AnimatedDefaultTextStyle
// AnimatedPhysicalModel
// AnimatedOpacity
// AnimatedPositioned
// ... etc

class _ImplicitlyAnimationScreenState extends State<ImplicitlyAnimationScreen> {
  bool toggled = false;

  @override
  build(context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 16,
                  left: 16,
                  right: 16,
                  bottom: 16),
              children: <Widget>[
                // TODO: AnimatedContainer
                Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'AnimatedContainer',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      margin: EdgeInsets.only(bottom: 16),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 24.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.ease,
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: toggled
                              ? CupertinoColors.destructiveRed
                              : CupertinoColors.activeGreen,
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                  ],
                ),
                // TODO: AnimatedPadding
                Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'AnimatedPadding',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      margin: EdgeInsets.only(bottom: 16),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 24.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: CupertinoColors.activeGreen,
                            borderRadius: BorderRadius.circular(4.0)),
                        child: AnimatedPadding(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.ease,
                          padding: EdgeInsets.all(toggled ? 16.0 : 0),
                          child: Text(
                            'Content',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: CupertinoColors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // TODO: AnimatedCrossFade
                Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'AnimatedCrossfade',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      margin: EdgeInsets.only(bottom: 16),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 24.0),
                      child: AnimatedCrossFade(
                        crossFadeState: toggled
                            ? CrossFadeState.showSecond
                            : CrossFadeState.showFirst,
                        duration: Duration(milliseconds: 400),
                        firstChild: Container(
                          decoration: BoxDecoration(
                              color: CupertinoColors.extraLightBackgroundGray,
                              borderRadius: BorderRadius.circular(4.0)),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              '👫',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: CupertinoColors.white,
                              ),
                            ),
                          ),
                        ),
                        secondChild: Container(
                          decoration: BoxDecoration(
                              color: CupertinoColors.activeGreen,
                              borderRadius: BorderRadius.circular(4.0)),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              '😘',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: CupertinoColors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'AnimatedDefaultTextStyle',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      margin: EdgeInsets.only(bottom: 16),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 24.0),
                      child: AnimatedDefaultTextStyle(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.ease,
                        style: toggled
                            ? TextStyle(
                                color: CupertinoColors.black,
                                fontSize: 16.0,
                              )
                            : TextStyle(
                                fontSize: 32.0,
                                color: CupertinoColors.destructiveRed,
                              ),
                        child: Text(
                          'hehe..',
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'AnimatedPhysicalModel',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      margin: EdgeInsets.only(bottom: 16),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 24.0),
                      child: AnimatedPhysicalModel(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.ease,
                        color: toggled
                            ? CupertinoColors.destructiveRed
                            : CupertinoColors.activeGreen,
                        child: Container(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Content',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: CupertinoColors.white,
                            ),
                          ),
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(toggled ? 16.0 : 0.0),
                        elevation: toggled ? 10.0 : 1.0,
                        shadowColor: toggled
                            ? CupertinoColors.destructiveRed
                            : CupertinoColors.lightBackgroundGray,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'AnimatedOpacity',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      margin: EdgeInsets.only(bottom: 16),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 24.0),
                      child: AnimatedOpacity(
                        opacity: toggled ? 0.3 : 1.0,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.ease,
                        child: Container(
                          padding: EdgeInsets.all(16.0),
                          color: CupertinoColors.activeGreen,
                          child: Text(
                            'Content',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: CupertinoColors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'AnimatedPositioned',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      margin: EdgeInsets.only(bottom: 16),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 24.0),
                      width: 240.0,
                      height: 240.0,
                      child: Stack(
                        children: <Widget>[
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 1000),
                            top: toggled ? 80.0 : 8.0,
                            left: toggled ? 48.0 : 8.0,
                            curve: Curves.elasticInOut,
                            child: Container(
                              padding: EdgeInsets.all(16.0),
                              color: CupertinoColors.activeGreen,
                              child: Text(
                                'Content',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: CupertinoColors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            child: CupertinoButton(
              child: Text('Toggle'),
              onPressed: () {
                setState(() {
                  toggled = !toggled;
                });
              },
              color: CupertinoColors.activeBlue,
            ),
          )
        ],
      ),
    );
  }
}
