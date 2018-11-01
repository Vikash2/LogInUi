import 'package:assignment_app/appbar_gradient.dart';
import 'package:assignment_app/profile_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      title: 'Profile App',
      home: Page(),

    );
  }
}
