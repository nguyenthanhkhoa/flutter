import 'package:flutter/material.dart';
import '../data/enum_data.dart';


class FirstControl extends StatefulWidget {
  @override
  _FirstControlState createState() =>
      new _FirstControlState();
}

class _FirstControlState extends State<FirstControl> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(globalMainPage.toString()),
        elevation: 0.0,
      ),
    );
  }
}