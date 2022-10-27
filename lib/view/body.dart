import 'package:flutter/material.dart';

import '../controller/calcs.dart';

class MainPageBody extends StatefulWidget {
  const MainPageBody({super.key});

  @override
  State<MainPageBody> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainPageBody> {
  final x1Controller = TextEditingController();
  final x2Controller = TextEditingController();
  final y1Controller = TextEditingController();
  final y2Controller = TextEditingController();
  String resultado = '';

  returnRuleOfThree() {
    double x1 = double.parse(x1Controller.text);
    double? x2 = double.tryParse(x2Controller.text);
    double y1 = double.parse(y1Controller.text);
    double? y2 = double.tryParse(y2Controller.text);
    setState(() {
      double res = (x2! * y1) / x1;
      resultado = 'O resutaldo é: $res';
    });
  }

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
                    keyboardType: TextInputType.number,
                    controller: x1Controller,
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
                    controller: y1Controller,
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
                    controller: x2Controller,
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
                    controller: y2Controller,
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
            child: Center(child: Text(resultado)

                //child: Text('O resultado é: $resultado'),
                ),
          ),
          Center(
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // print(x1Controller.text);
                    // print(x2Controller.text);
                    // print(y1Controller.text);
                    // print(y2Controller.text);
                    returnRuleOfThree();
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
