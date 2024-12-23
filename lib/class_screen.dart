import 'package:flutter/material.dart';

class ClassScreen extends StatelessWidget {
  final String classId;

  const ClassScreen({Key? key, required this.classId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Class: $classId')),
      body: Center(
        child: Text('Displaying content for Class ID: $classId'),
      ),
    );
  }
}
