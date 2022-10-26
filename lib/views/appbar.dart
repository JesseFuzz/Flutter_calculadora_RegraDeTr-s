import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({
    super.key,
    required String title,
  });
  @override
  State<MyAppBar> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.calculate_sharp),
        title: const Text('Rule Of Three (Regra de Três)'),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.history), onPressed: () {}),
          IconButton(icon: const Icon(Icons.share), onPressed: () {})
        ],
        // title: Text(widget.title),
      ),
      body: Center(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: const Text('Calculate'),
            )
          ],
        ),
      ),
    );
  }
}
