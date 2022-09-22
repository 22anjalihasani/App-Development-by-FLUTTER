import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getIntepretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to Exercise more!';
    } else if (_bmi > 18.5) {
      return 'You have a normal weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more!';
    }
  }
}
