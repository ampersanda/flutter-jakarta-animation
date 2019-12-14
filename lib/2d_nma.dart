import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlareScreen extends StatefulWidget {
  @override
  createState() => _FlareScreenState();
}

class _FlareScreenState extends State<FlareScreen> {
  @override
  build(context) {
    return Scaffold(
      body: FlareActor('assets/flare/flare_logo.flr'),
    );
  }
}
