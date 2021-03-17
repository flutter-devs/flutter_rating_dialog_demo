import 'package:flutter/material.dart';
import 'package:flutter_rating_dailog_demo/splash_page.dart';
import 'demo_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
