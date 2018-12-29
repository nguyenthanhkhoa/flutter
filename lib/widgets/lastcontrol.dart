import 'package:flutter/material.dart';
import 'package:flutter_finalcad_demo/widgets/list_view_builder.dart';
import '../data/enum_data.dart';

class LastControl extends StatefulWidget {
  @override
  _LastControlState createState() => new _LastControlState();
}

class _LastControlState extends State<LastControl> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Last Page'),
        elevation: 0.0,
      ),
    );
  }
}
