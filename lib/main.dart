import 'package:flutter/material.dart';
import 'package:flutter_jakarta_animations/2d_nma.dart';
import 'package:flutter_jakarta_animations/delay.dart';
import 'package:flutter_jakarta_animations/implicit_animation_screen.dart';
import 'package:flutter_jakarta_animations/progressive.dart';
import 'package:flutter_jakarta_animations/tween.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: FlareScreen(),
    );
  }
}
