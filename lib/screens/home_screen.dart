import 'package:flutter/material.dart';
import 'package:flutter_finalcad_demo/widgets/lastcontrol.dart';
import 'package:flutter_finalcad_demo/widgets/list_view_builder.dart';
import '../widgets/static_popupmenu_button.dart';
import '../widgets/problem_popupmenu_button.dart';
import '../widgets/observe_popupmenu_button.dart';
import '../widgets/problem_popupmenu_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  _getWidgetMain()
  {

  }
  String mainView = 'MainView';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(
          'Demo project',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: new IconButton(
            icon: new Icon(
              Icons.dehaze,
              color: Colors.grey.shade500,
            ),
            onPressed: () {
              //_getToggleChild();
              _scaffoldKey.currentState.openDrawer();
            }),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(
                Icons.settings,
                color: Colors.black,
              ),
              onPressed: () {
                //Navigator.of(context).pushNamed('/author');
              }),
          StaticPopupMennuButton(),
        ],
        backgroundColor: Colors.white,
      ),
      body: new Scaffold(
        key: _scaffoldKey,
        drawer: new Drawer(child: ProjectInforListView()),
        body: LastControl(),
        bottomNavigationBar: BottomAppBar(
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ObserverPopupMennuButton(),
              ProblemPopupMennuButton(),
              IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {
                  //Navigator.of(context).pop();
                  //Navigator.of(context).pushNamed('/tool');
                },
              ),
            ],
          ),
        ),
      ),

      //ListViewWidgets(projectInfor: dataProjectInforList)
    );
  }
}
