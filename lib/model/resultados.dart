class Calcs {
  String? x1;
  String? x2;
  String? y1;
  String? y2;
  double? answer;

  Calcs({this.x1, this.x2, this.y1, this.y2});

  static double calculate(x1, x2, y1) {
    // double? x1;
    // double? x2;
    // double? y1;
    double res = (x2 * y1) / x1;
    return res;
  }

  static String teste() {
    return 'teste';
  }

  @override
  String toString() {
    //quando eu printo o Calc eu printo o toString

    return 'primeiro: $x1, Segundo: $x2, terceiro: $y1, Quarto: $y2';
  }
  // Calcs.fromJson(Map<String, dynamic> json) {
  //   x1 = json['x1'];
  //   x2 = json['x2'];
  //   y1 = json['y1'];
  //   y2 = json['y2'];
  //   answer = json['result'];
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['x1'] = this.x1;
  //   data['x2'] = this.x2;
  //   data['y1'] = this.y1;
  //   data['y2'] = this.y2;
  //   data['result'] = this.answer;
  //   return data;
  // }
}
// abstract class Historico {
//   String? x1;
//   String? x2;
//   String? y1;
//   String? y2;
//   String? answer;

//   contato(x1, x2, y1, y2, answer);
//   Map<String, dynamic> toMap() {
//     var map = <String, dynamic>{};
//     map['x1'] = x1;
//     map['x2'] = x2;
//     map['y1'] = y1;
//     map['y2'] = y2;
//     map['answer'] = answer;
//     return map;
//   }

//   Historico.fromMapObject(Map<String, dynamic> map) {
//     x1 = map['x1'];
//     x2 = map['x2'];
//     y1 = map['y1'];
//     y2 = map['y2'];
//     this.answer = map['answer'];
//   }
// }

