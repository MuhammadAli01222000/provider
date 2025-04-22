import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:providers/services/app_controller.dart';

class LotoreyaProvider extends ChangeNotifier {
  final int number1;
  final int number2;
  final int number3;

  LotoreyaProvider({
    required this.number1,
    required this.number2,
    required this.number3,
  });

  Set<int> _numbers = {};

  Set<int> get numbers => _numbers;

  void generateNumbers({required int  number1,required int number2,required int number3}) {
    _numbers.clear();
    var check=AppController.check(number1, number2,number3);
    Random random = Random();
    if(check==null) {
      {
        for (int i = 1;  _numbers.length!=1 ;i++) {
          int s = random.nextInt(number1);
          _numbers.add(s);

          if (_numbers.length == 1) {
            break;
          }
        }

        notifyListeners();
      }
    }
    if (check==true) {
      for (int i = number1; _numbers.length!=number3; i++) {
        int s = random.nextInt(number2);
        _numbers.add(s);

        if (_numbers.length == number3) {
          break;
        }
      }
      print(numbers.length);
print(0);
      notifyListeners();
    }
  else  {
      for (int i = number1;  i<number2; i++) {
        int s = random.nextInt(number2);

        _numbers.add(s);

        if (_numbers.length == number3) {
          break;
        }
      }
      print(numbers.length);

      notifyListeners();
    }
  }
}
