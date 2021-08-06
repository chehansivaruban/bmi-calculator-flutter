import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.height, this.weight);

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getRusults() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getPara() {
    if (_bmi >= 25) {
      return "You need to exercise you fat human";
    } else if (_bmi > 18.5) {
      return "Nice, you are in shape and have a normal body weight";
    } else {
      return "you have a lower body weight, EAT EAT EAT";
    }
  }
}
