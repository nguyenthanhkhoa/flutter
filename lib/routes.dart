import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{
        //'/home': (BuildContext context) => new MyHomePage(),
        //'/detail': (BuildContext context) => new DetailPage(),
        //'/tool': (BuildContext context) => new ToolPage(),
        //'/author': (BuildContext context) => new AuthorPage(),
        //'/contact': (BuildContext context) => new ContactPage(),
      },
    );
  }
}
