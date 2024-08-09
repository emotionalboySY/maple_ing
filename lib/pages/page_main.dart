import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageMain extends StatelessWidget {
  PageMain({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        width: 350,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Left Drawer'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('text 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Right Drawer'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('text 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Center(
          child: Text(
            "메이플링",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        leading: TextButton(
          child: Text(
            "모든 기능 보기",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
        leadingWidth: 120,
        actions: [
          IconButton(
            icon: Icon(
              Icons.account_circle,
            ),
            onPressed: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            "Test for Navigation Drawer from both side"
          ),
        )
      ),
    );
  }
}
