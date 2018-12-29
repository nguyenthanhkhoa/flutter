import 'package:flutter/material.dart';
import '../data/enum_data.dart';


class ObserverPopupMennuButton extends StatefulWidget {
  @override
  _ObserverPopupMennuButtonState createState() =>
      new _ObserverPopupMennuButtonState();
}

class _ObserverPopupMennuButtonState extends State<ObserverPopupMennuButton> {
  IconData observerIcon;
  String observerIconString;

  @override
  void initState() {
    super.initState();
    observerIcon = Icons.adjust;
    observerIconString = 'Vấn Đề';
  }

  _setStaticIcon(IconData icon, String text) {
    setState(() {
      observerIcon = icon;
      observerIconString = text;
    });
  }
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<ProblemGroupEnum>(
      icon: new Icon(
        Icons.filter_list,
        color: Colors.black,
      ),
      itemBuilder: (BuildContext context) =>
      <PopupMenuEntry<ProblemGroupEnum>>[
        PopupMenuItem<ProblemGroupEnum>(
          value: ProblemGroupEnum.Problem,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: new Row(
              children: [
                new IconButton(icon: new Icon(Icons.local_see)),
                Text('Quan Sát')
              ],
            ),
          ),
        ),
        PopupMenuItem<ProblemGroupEnum>(
          value: ProblemGroupEnum.Problem,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: new Row(
              children: [
                new IconButton(icon: new Icon(Icons.adjust)),
                Text('Bang')
              ],
            ),
          ),
        ),
        PopupMenuItem<ProblemGroupEnum>(
          value: ProblemGroupEnum.Form,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: new Row(
              children: [
                new IconButton(icon: new Icon(Icons.today)),
                Text('Ngày')
              ],
            ),
          ),
        ),
        PopupMenuItem<ProblemGroupEnum>(
          value: ProblemGroupEnum.Mission,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: new Row(
              children: [
                new IconButton(icon: new Icon(Icons.portrait)),
                Text('Tác Giả')
              ],
            ),
          ),
        ),
      ],
    );
  }
}




