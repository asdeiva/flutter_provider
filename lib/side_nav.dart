import 'package:flutter/material.dart';
import 'package:my_flutter_project/screen_provider.dart';
import 'package:provider/provider.dart';
import 'class_screen.dart';

class SideNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Classes',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Class 1'),
            onTap: () {
              _onClassSelected(context, 'class1');
            },
          ),
          ListTile(
            title: Text('Class 2'),
            onTap: () {
              _onClassSelected(context, 'class2');
            },
          ),
          ListTile(
            title: Text('Class 3'),
            onTap: () {
              _onClassSelected(context, 'class3');
            },
          ),
        ],
      ),
    );
  }

  void _onClassSelected(BuildContext context, String classId) {
    // Get the provider and set the selected class screen
    final sideNavBarProvider = Provider.of<SideBarProvider>(context, listen: false);
    sideNavBarProvider.setScreen(ClassScreen(classId: classId), classId);
    Navigator.pop(context); // Close the drawer
  }
}
