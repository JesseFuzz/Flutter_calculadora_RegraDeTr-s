import 'package:flutter/material.dart';
import 'package:rule_of_three/views/main_page.dart';
import 'views/appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Calculator',
      home: MainPage(), //prq é tão necessário?
    );
  }
}
