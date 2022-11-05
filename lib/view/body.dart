import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter/services.dart';
import 'package:rule_of_three/controller/calcs.dart';
import 'package:rule_of_three/model/resultados.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

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

  // TextEditingController x1Controller = TextEditingController();
  // TextEditingController x2Controller = TextEditingController();
  // TextEditingController y1Controller = TextEditingController();
  // TextEditingController y2Controller = TextEditingController();

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
        resultado = CalculateRuleOfThreeAndSave()
            .calculate(x1: x1, x2: x2, y1: y1, y2: y2);
        // CalculateRuleOfThreeAndSave().saveResult(resultado);

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
                    decoration: InputDecoration(
                      prefixIcon: Transform.rotate(
                          angle: 45 * math.pi / 180,
                          child: const Icon(Icons.arrow_forward)),
                      labelText: "x'",
                      border: const OutlineInputBorder(
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
                    decoration: InputDecoration(
                      //it was only icon instead of prefixIcon
                      prefixIcon: Transform.rotate(
                          angle: 135 * math.pi / 180,
                          child: const Icon(Icons.arrow_forward)),
                      labelText: "y'",
                      border: const OutlineInputBorder(
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
                    decoration: InputDecoration(
                      prefixIcon: Transform.rotate(
                          angle: 135 * math.pi / 180,
                          child: const Icon(Icons.arrow_back)),
                      labelText: 'x"',
                      border: const OutlineInputBorder(
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
                    decoration: InputDecoration(
                      prefixIcon: Transform.rotate(
                          angle: 45 * math.pi / 180,
                          child: const Icon(Icons.arrow_back)),
                      labelText: 'y"',
                      border: const OutlineInputBorder(
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
                  onPressed: () {
                    // print(Calcs.calculate(x1Controller.text, x2Controller.text,
                    //     y1Controller.text));
                    // print(Calcs.teste());
                    // concatenate(
                    //   x1Controller,
                    //   x2Controller,
                    //   y1Controller,
                    // );
                    calculateRuleOfThree();
                    CalculateRuleOfThreeAndSave().saveResult(resultado);
                    // int id = 0;
                    // int increment = id++;
                    // var resultsHistory = [];
                    // var resultHistory = [];
                    // resultHistory.add(resultado);
                    // print(resultHistory);
                    // resultHistory = resultado as List;
                    // resultsHistory.add(resultado);
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

  // void concatenate(
  //   x1Controller,
  //   x2Controller,
  //   y1Controller,
  // ) {
  //   double? x1Controller;
  //   double? y1Controller;
  //   double? y2Controller;
  //   print(Calcs.calculate(x1Controller, y1Controller, y2Controller));
  // }

  // void saveCalc(Calcs calc) async {
  //   //criando uma instância do SharedPreferences:
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   //agora irei salvar algo na memoria:
  //   prefs.setString("calculo", json.encode(calc.toJson()));
  // }
}
