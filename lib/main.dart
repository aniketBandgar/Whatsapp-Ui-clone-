import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF075e54),
      ),
      home: HomeScreen(),
    );
  }
}
