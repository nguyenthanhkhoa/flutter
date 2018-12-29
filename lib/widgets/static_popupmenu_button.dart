import 'package:flutter/material.dart';
import '../data/enum_data.dart';

class StaticPopupMennuButton extends StatefulWidget {
  @override
  _StaticPopupMennuButtonState createState() =>
      new _StaticPopupMennuButtonState();
}

class _StaticPopupMennuButtonState extends State<StaticPopupMennuButton> {
  IconData staticIcon;
  String staticIconString;

  @override
  void initState() {
    super.initState();
    staticIcon = Icons.equalizer;
    staticIconString = 'Thống Kê';
  }

  _setStaticIcon(IconData icon, String text) {
    setState(() {
      staticIcon = icon;
      staticIconString = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<GroupEnum2>(
      child: new Row(
        children: [
          new IconButton(icon: new Icon(staticIcon)),
          //Text(staticIconString)
        ],
      ),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<GroupEnum2>>[
            PopupMenuItem<GroupEnum2>(
              value: GroupEnum2.Statistics,
              child: GestureDetector(
                onTap: () {
                  _setStaticIcon(Icons.equalizer,'Thống Kê');
                  Navigator.pop(context);
                },
                child: new Row(
                  children: [
                    new IconButton(icon: new Icon(Icons.equalizer)),
                    Text('Thống Kê')
                  ],
                ),
              ),
            ),
            PopupMenuItem<GroupEnum2>(
              value: GroupEnum2.List,
              child: GestureDetector(
                onTap: () {
                  _setStaticIcon(Icons.list,'Danh Sách');
                  Navigator.pop(context);
                },
                child: new Row(
                  children: [
                    new IconButton(icon: new Icon(Icons.list)),
                    Text('Danh Sách')
                  ],
                ),
              ),
            ),
            PopupMenuItem<GroupEnum2>(
              value: GroupEnum2.Library,
              child: GestureDetector(
                onTap: () {
                  _setStaticIcon(Icons.image,'Thư Viện Ảnh');
                  Navigator.pop(context);
                },
                child: new Row(
                  children: [
                    new IconButton(icon: new Icon(Icons.image)),
                    Text('Thư Viện Ảnh')
                  ],
                ),
              ),
            ),
          ],
    );
  }
}
