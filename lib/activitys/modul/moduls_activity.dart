import 'package:flutter/material.dart';

class ModulsActivity extends StatefulWidget {
  ModulsActivity({Key key}) : super(key: key);

  @override
  _ModulsActivityState createState() => _ModulsActivityState();
}

class _ModulsActivityState extends State<ModulsActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Moduls"),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Text("Moduls Activity"),
      ),
    );
  }
}