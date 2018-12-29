import 'package:flutter/material.dart';
import '../data/enum_data.dart';


class ProblemPopupMennuButton extends StatefulWidget {
  @override
  _ProblemPopupMennuButtonState createState() =>
      new _ProblemPopupMennuButtonState();
}

class _ProblemPopupMennuButtonState extends State<ProblemPopupMennuButton> {
  IconData problemIcon;
  String problemIconString;

  @override
  void initState() {
    super.initState();
    problemIcon = Icons.adjust;
    problemIconString = 'Vấn Đề';
  }

  _setStaticIcon(IconData icon, String text) {
    setState(() {
      problemIcon = icon;
      problemIconString = text;
    });
  }
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<ProblemGroupEnum>(
      child: new Row(
        children: [
          new IconButton(icon: new Icon(problemIcon)),
          Text(problemIconString)
        ],
      ),
      itemBuilder: (BuildContext context) =>
      <PopupMenuEntry<ProblemGroupEnum>>[
        PopupMenuItem<ProblemGroupEnum>(
          value: ProblemGroupEnum.Problem,
          child: GestureDetector(
            onTap: () {
              _setStaticIcon(Icons.adjust,'Vấn Đề');
              Navigator.pop(context);
            },
            child: new Row(
              children: [
                new IconButton(icon: new Icon(Icons.adjust)),
                Text('Vấn Đề')
              ],
            ),
          ),
        ),
        PopupMenuItem<ProblemGroupEnum>(
          value: ProblemGroupEnum.Form,
          child: GestureDetector(
            onTap: () {
              _setStaticIcon(Icons.web_asset,'Mẫu');
              Navigator.pop(context);
            },
            child: new Row(
              children: [
                new IconButton(icon: new Icon(Icons.web_asset)),
                Text('Mẫu')
              ],
            ),
          ),
        ),
        PopupMenuItem<ProblemGroupEnum>(
          value: ProblemGroupEnum.Mission,
          child: GestureDetector(
            onTap: () {
              _setStaticIcon(Icons.place,'Nhiệm Vụ');
              Navigator.pop(context);
            },
            child: new Row(
              children: [
                new IconButton(icon: new Icon(Icons.place)),
                Text('Nhiệm Vụ')
              ],
            ),
          ),
        ),
      ],
    );
  }
}




