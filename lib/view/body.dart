import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rule_of_three/controller/calcs.dart';

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

  void calculateRuleOfThree() {
    double? x1;
    double? x2;
    double? y1;
    double? y2;
    if (x1Controller.text.isNotEmpty) {
      x1 = double.parse(x1Controller.text);
    }
    if (x2Controller.text.isNotEmpty) {
      x2 = double.parse(x2Controller.text);
    }
    if (y1Controller.text.isNotEmpty) {
      y1 = double.parse(y1Controller.text);
    }
    if (y2Controller.text.isNotEmpty) {
      y2 = double.parse(y2Controller.text);
    }
    setState(
      () {
        resultado =
            CalculateRuleOfThreeUsecase().call(x1: x1, x2: x2, y1: y1, y2: y2);
        //parametro nomeado
      },
    );
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
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                    controller: x1Controller,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.numbers),
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
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    controller: y1Controller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.numbers),
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
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    controller: x2Controller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.numbers),
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
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    controller: y2Controller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.numbers),
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
              child: SelectableText(resultado),
            ),
          ),
          Center(
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: calculateRuleOfThree,
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
