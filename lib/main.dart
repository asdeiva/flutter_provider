import 'package:flutter/material.dart';
import 'package:my_flutter_project/screen_provider.dart';
import 'package:my_flutter_project/side_nav.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SideBarProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Dynamic Screen Rendering')),
        drawer: SideNavBar(), // Side navigation bar
        body: Consumer<SideBarProvider>(
          builder: (context, sideBarProvider, child) {
            // Show the current screen based on the selected class
            return sideBarProvider.selectedClassId == null
                ? Center(child: Text('Select a class from the side menu'))
                : sideBarProvider.currentScreen;
          },
        ),
      ),
    );
  }
}
