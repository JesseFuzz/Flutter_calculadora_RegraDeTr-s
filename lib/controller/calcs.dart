class CalculateRuleOfThreeAndSave {
  String calculate({double? x1, double? x2, double? y1, double? y2}) {
    // var lista = [];
    if (y2 == null && x2 != null && y1 != null && x1 != null) {
      double res = (x2 * y1) / x1;
      final rounded = res.toStringAsFixed(2);
      // lista.add(rounded);
      // print(lista);
      return 'O resultado de y" é: $rounded';
    } else if (x2 == null && y2 != null && y1 != null && x1 != null) {
      double res = (x1 * y2) / y1;
      final rounded = res.toStringAsFixed(2);
      // lista.add(rounded);
      // print(lista);
      return 'O resultado de x" é: $rounded';
    } else if (y1 == null && x1 != null && x2 != null && y2 != null) {
      double res = (x1 * y2) / x2;
      final rounded = res.toStringAsFixed(2);
      // lista.add(rounded);
      // print(lista);
      return "O resultado de y' é: $rounded";
    } else if (x1 == null && y1 != null && x2 != null && y2 != null) {
      double res = (x2 * y1) / y2;
      final rounded = res.toStringAsFixed(2);
      // lista.add(rounded);
      // print(lista);
      return "O resultado de x' é: $rounded";
    }
    return 'Preencha corretamente os valores!';
  }

  void saveResult(String result) {
    // var historico = {1: "5", 2: '6'};
    // for (int i = 0; i < historico.length; i++) {
    //   historico.;
    // }

    var historico = [];
    historico.add(result);
    print(historico);
  }
}

// import 'package:flutter/material.dart';

// double numX1 = 0, numX2 = 0, numY1 = 0, numY2 = 0, answer = 0;

// // final TextEditingController x1 = TextEditingController(text: "");
// // final x2 = TextEditingController(text: "");
// // final y1 = TextEditingController(text: "");
// // final y2 = TextEditingController(text: "");

// TextEditingController x1 = TextEditingController();
// TextEditingController x2 = TextEditingController();
// TextEditingController y1 = TextEditingController();
// TextEditingController y2 = TextEditingController();

// double returnRuleOfThree(double x1, double y1, double x2) {
//   answer = (x1 * y1) / x2;
//   return answer;
// }

// setState(() {
//   if ((y2.toString().isEmpty) &&
//       x2.toString().isNotEmpty &&
//       y1.toString().isNotEmpty &&
//       x1.toString().isNotEmpty) {
//     double res = (x2 * y1) / x1;
//     resultado = 'O resutaldo é: $res';
//   } else if (x2.toString().isEmpty &&
//       y2.toString().isNotEmpty &&
//       y1.toString().isNotEmpty &&
//       x1.toString().isNotEmpty) {
//     double res = (x1 * y2) / y1;
//     resultado = 'O resutaldo é: $res';
//   } else if (y1.toString().isEmpty &&
//       x1.toString().isNotEmpty &&
//       x2.toString().isNotEmpty &&
//       x2.toString().isNotEmpty) {
//     double res = (x1 * y2) / x2;
//     resultado = 'O resutaldo é: $res';
//   } else if (x1.toString().isEmpty &&
//       y1.toString().isNotEmpty &&
//       x2.toString().isNotEmpty &&
//       y2.toString().isNotEmpty) {
//     double res = (x2 * y1) / y2;
//     resultado = 'O resutaldo é: $res';
//   }
// });
