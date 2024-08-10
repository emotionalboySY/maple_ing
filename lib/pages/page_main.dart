import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maple_ing/custom_app_bar.dart';

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
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Left Drawer'),
            ),
            ListTile(
              title: const Text(
                'text 1',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
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
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Right Drawer'),
            ),
            ListTile(
              title: const Text('text 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(scaffoldKey: _scaffoldKey),
      ),
      body: const SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: double.infinity,
                height: 2,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                "Test for Navigation Drawer from both side",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
