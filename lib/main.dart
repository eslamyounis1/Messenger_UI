import 'package:flutter/material.dart';
import 'package:practice_makes_perfect/login_screen.dart';
import 'home_screen.dart';
import 'messenger_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessengerScreen(),
    );
  }
}
