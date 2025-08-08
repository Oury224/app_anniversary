// main.dart
import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(BirthdayMemoriesApp());
}

class BirthdayMemoriesApp extends StatelessWidget {
  const BirthdayMemoriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birthday Memories',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Roboto',
      ),
      home: HomePage(),
    );
  }
}
