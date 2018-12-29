import 'package:flutter/material.dart';
import '../data/enum_data.dart';


class ProjectInforListView extends StatefulWidget {
  @override
  _ProjectInforListViewState createState() => new _ProjectInforListViewState();
}

class _ProjectInforListViewState extends State<ProjectInforListView> {
  int number;
  String mainPage;
  List<ProjectInfor> dataProjectInforDetaiList;
  void numChangeCallback(int receivedNum) {
    setState(() {
      if(receivedNum<5)
        number = receivedNum +1 ;
    });
  }

  void numChangeCallback3(String value,int index) {
    setState(() {
      switch (value) {
        case 'Building':
          {
            dataProjectInforDetaiList = dataBuidingProjectInforList;
            mainPage = 'Building';
          }
          break;
        case 'Rail':
          {
            dataProjectInforDetaiList = dataRailProjectInforDetaiList;
            mainPage = 'Rail';
          }
          break;
        case 'Road':
          {
            dataProjectInforDetaiList = dataRoadandNetworksProjectInforDetaiList;
            mainPage = 'Road';
          }
          break;
        case 'Roadand Networks':
          {
            dataProjectInforDetaiList = dataRoadandNetworksProjectInforDetaiList;
            mainPage = 'Roadand Networks';
          }
          break;
        case 'Pedestrian Bridge':
          {
            dataProjectInforDetaiList = dataPedestrianBridgeProjectInforDetaiList;
            mainPage = 'Pedestrian Bridge';
          }
          break;
        case 'Subway Station':
          {
            dataProjectInforDetaiList = dataSubwayStationProjectInforDetaiList;
            mainPage = 'Subway Station';
          }
          break;
        default:
          {
            dataProjectInforDetaiList = dataProjectInforList;
            mainPage = 'Building';
          }
          break;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    number = 0;
    mainPage = 'Main Page';
    dataProjectInforDetaiList = dataProjectInforList;
  }

  @override
  Widget build(BuildContext context) {
    return NumManager(
        number: number,
        dataProjectInforDetaiList: dataProjectInforDetaiList,
        callback2: numChangeCallback3,
        callback: numChangeCallback,
        child: Builder(builder: homeScreenBuilder));
  }
}

Widget homeScreenBuilder(BuildContext context) {
  int _number = NumManager.of(context).number;
  Function(int) _callback = NumManager.of(context).callback;
  Function(String,int) _callback2 = NumManager.of(context).callback2;
  List<ProjectInfor> _dataProjectInforDetaiList =
      NumManager.of(context).dataProjectInforDetaiList;
  return
    ListView.builder(
      itemCount: _dataProjectInforDetaiList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            //Navigator.of(context).pushNamed('/tool');
            globalMainPage = _dataProjectInforDetaiList[index].title.toString();
            _callback2(_dataProjectInforDetaiList[index].title.toString(),index);
          },
          child: Container(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 10,
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('${_dataProjectInforDetaiList[index].title}'),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text('${_dataProjectInforDetaiList[index].number}'),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                new Divider(
                  height: 15.0,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        );
      },
    );

//    ListView.builder(
//      itemCount: _dataProjectInforDetaiList.length,
//      itemBuilder: (context, index) {
//        return GestureDetector(
//          onTap: () {
//            //_callback(++_number);
//            _callback2(_dataProjectInforDetaiList[index].title,index);
//          },
//          child: ListTile(
//            title: Text('${_dataProjectInforDetaiList[index].title} $_number' ),
//          ),
//        );
//      },
//    );


 // );
}

class NumManager extends InheritedWidget {
  final int number;
  final Widget child;
  final String mainPage;
  final Function(int) callback;
  final Function(String,int) callback2;
  final List<ProjectInfor> dataProjectInforDetaiList;
  final Key key;

  NumManager(
      {@required this.number,
        @required this.callback,
        @required this.callback2,
        @required this.child,
        @required this.dataProjectInforDetaiList,
        @required this.mainPage,
        this.key})
      : super(key: key);

  @override
  bool updateShouldNotify(NumManager oldWidget) {
    return oldWidget.dataProjectInforDetaiList == dataProjectInforDetaiList;
  }

  static NumManager of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(NumManager);
}

class ProjectInforDetail {
  ProjectInforDetail(this.title, this.pageNavigator);
  String title;
  String pageNavigator;
}

List<ProjectInforDetail> dataProjectInforDetaiList1 =
<ProjectInforDetail>[
  ProjectInforDetail('Circulation', 'Circulation'),
  ProjectInforDetail('Stairs A', 'Stairs A'),
  ProjectInforDetail('Stairs B', 'Stairs B'),
  ProjectInforDetail('Stairs C', 'Stairs C'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
];

List<ProjectInforDetail> dataProjectInforDetaiList2 =
<ProjectInforDetail>[
  ProjectInforDetail('Circulation', 'Circulation'),
  ProjectInforDetail('Stairs A2', 'Stairs A2'),
  ProjectInforDetail('Stairs B2', 'Stairs B2'),
  ProjectInforDetail('Stairs C2', 'Stairs C2'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
];

List<ProjectInforDetail> dataProjectInforDetaiList3 =
<ProjectInforDetail>[
  ProjectInforDetail('Circulation', 'Circulation'),
  ProjectInforDetail('Stairs A3', 'Stairs A3'),
  ProjectInforDetail('Stairs B3', 'Stairs B3'),
  ProjectInforDetail('Stairs C3', 'Stairs C3'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
  ProjectInforDetail('Unit 1213P', 'Unit 1213P'),
];
