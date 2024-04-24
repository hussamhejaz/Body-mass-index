import 'dart:math';
class CalculateBrain {

  CalculateBrain({required this.weight , required this.height});

  final int height;
  final int weight;
  late double _bmi;

  String calculateBMI(){
     _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'OverWeight';
    }
    else if(_bmi > 18.5)
      {
        return 'Normal';
      }
    else
      {
        return 'UnderWeight';
      }
  }
  String desc(){
    if(_bmi >= 25){
      return 'you have a higher than normal body';
    }
    else if(_bmi > 18.5)
    {
      return 'you have a normal body';
    }
    else
    {
      return 'you have a lower than normal body';
    }

  }

}