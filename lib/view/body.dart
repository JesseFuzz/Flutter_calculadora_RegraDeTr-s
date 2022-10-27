import 'package:flutter/material.dart';

import '../controller/calcs.dart';

class MainPageBody extends StatefulWidget {
  const MainPageBody({super.key});

  @override
  State<MainPageBody> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainPageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.00),
                child: SizedBox(
                  width: 150,
                  child: TextField(
                    controller: x1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.confirmation_number),
                      labelText: "x'",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.00),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 150,
                  child: TextField(
                    controller: y1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.yard),
                      labelText: "y'",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.00),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 150,
                  child: TextField(
                    controller: x2,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.wallet),
                      labelText: 'x"',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.00),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 150,
                  child: TextField(
                    controller: y2,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.text_snippet),
                      labelText: 'y"',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.00),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Text('O resultado é: $answer'),
            ),
          ),
          Center(
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    //returnRuleOfThree(x1, y1, x2);
                  },
                  child: const Text('Calculate'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
