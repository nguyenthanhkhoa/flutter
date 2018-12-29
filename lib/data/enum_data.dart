import 'package:flutter/material.dart';

enum GroupEnum { AddNewGroup, Delete }
enum GroupEnum2 { Statistics, List, Library }
enum ProblemGroupEnum { Problem, Form, Mission }
enum InforSelectGroupEnum { Observe, Department, Day, Author }


class ProjectInfor {
  ProjectInfor(this.title, this.pageNavigator, this.number);
  final String title;
  final String number;
  final String pageNavigator;
}


final List<ProjectInfor> dataProjectInforList = <ProjectInfor>[
  ProjectInfor('Building', 'Building', '5'),
  ProjectInfor('Rail', 'Rail', '5'),
  ProjectInfor('Road', 'Road', '5'),
  ProjectInfor('Pedestrian Bridge', 'Pedestrian Bridge', '5'),
  ProjectInfor('Subway Station', 'Subway Station', '5'),
  ProjectInfor('Roadand Networks', 'RoadandNetworks', '5'),
];

String globalMainPage = 'Main Page';
final List<ProjectInfor> dataBuidingProjectInforList = <ProjectInfor>[
  ProjectInfor('Circulation', 'Circulation','4'),
  ProjectInfor('Stairs A', 'Stairs A',''),
  ProjectInfor('Stairs B', 'Stairs B',''),
  ProjectInfor('Stairs C', 'Stairs C',''),
  ProjectInfor('Unit 1213P', 'Unit 1213P', ''),
  ProjectInfor('Unit 1213P', 'Unit 1213P', ''),
  ProjectInfor('Unit 1213P', 'Unit 1213P', ''),
  ProjectInfor('Unit 1213P', 'Unit 1213P', ''),
  ProjectInfor('Unit 1213P', 'Unit 1213P', ''),
  ProjectInfor('Unit 1213P', 'Unit 1213P', ''),
  ProjectInfor('Unit 1213P', 'Unit 1213P', ''),
];

final List<ProjectInfor> dataRailProjectInforDetaiList = <ProjectInfor>[
  ProjectInfor('Lane V1', 'Circulation',''),
  ProjectInfor('Lane V1bis', 'Stairs A',''),
  ProjectInfor('Lane V2', 'Stairs B',''),
  ProjectInfor('Lane V2bis', 'Stairs C',''),
  ProjectInfor('Lane VA', 'Unit 1213P', ''),
  ProjectInfor('Platform 1', 'Unit 1213P', ''),
  ProjectInfor('Platform 2', 'Unit 1213P', ''),
  ProjectInfor('Platform 3', 'Unit 1213P', ''),
  ProjectInfor('Platform 4', 'Unit 1213P', ''),
];

final List<ProjectInfor> dataRoadandNetworksProjectInforDetaiList = <ProjectInfor>[
  ProjectInfor('Zone 1', '',''),
  ProjectInfor('Zone 2', '',''),
  ProjectInfor('Zone 3', '',''),
];

final List<ProjectInfor> dataPedestrianBridgeProjectInforDetaiList = <ProjectInfor>[
  ProjectInfor('Pedestrian', 'Circulation','1'),
  ProjectInfor('Bridge Selection', 'Stairs A',''),
  ProjectInfor('Bridge Top View', 'Stairs B',''),
  ProjectInfor('Bridge Selection 2', 'Stairs C',''),
  ProjectInfor('Bridge Selection 3', 'Unit 1213P', ''),
  ProjectInfor('Bridge Selection 4', 'Unit 1213P', ''),
  ProjectInfor('Bridge Selection 5', 'Unit 1213P', ''),
  ProjectInfor('Bridge Selection 6', 'Unit 1213P', ''),
];

final List<ProjectInfor> dataSubwayStationProjectInforDetaiList = <ProjectInfor>[
  ProjectInfor('Subway Station', '',''),
  ProjectInfor('Subway Station A', '',''),
  ProjectInfor('Subway Station B', '',''),
];