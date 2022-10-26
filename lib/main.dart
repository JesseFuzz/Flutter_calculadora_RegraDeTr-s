import 'package:flutter/material.dart';
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
      home: MyAppBar(
          title: 'Rule Of Three (Regra de Três)'), //prq é tão necessário?
    );
  }
}
