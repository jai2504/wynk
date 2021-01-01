import 'package:flutter/material.dart';
import 'package:wynk/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WYNK .... FEEL THE MUSIC',
      theme: ThemeData.dark(),
      darkTheme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
