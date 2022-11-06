import 'package:flutter/material.dart';

import 'body.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Histórico de Cálculo"),
            ),
            ListTile(
              title: Text('teste'),
              leading: Icon(Icons.numbers),
            )
          ],
        ),
      ),
      appBar: AppBar(
        // leading: const Icon(Icons.calculate_sharp),

        title: const Center(child: Text('Rule of three')),

        actions: <Widget>[
          IconButton(icon: const Icon(Icons.calculate_sharp), onPressed: () {}),
          //   IconButton(icon: const Icon(Icons.share), onPressed: () {})
        ],
        // title: Text(widget.title),
      ),
      body: const MainPageBody(),
    );
  }
}
