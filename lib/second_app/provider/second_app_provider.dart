import 'dart:math';
import 'package:flutter/cupertino.dart';
class SecondAppProvider extends ChangeNotifier {
  int number1 = 0;
  int number2 = 0;
  int number3 = 0;

  int add = 0;
  int subtraction = 0;
  int multiplication = 0;
  int division = 0;

  List<int> list1 = [];
  List<int> list2 = [];
  List<double> result = [];

  void setInputs({
    required int add,
    required int subtraction,
    required int multiplication,
    required int division,
    required int number1,
    required int number2,
    required int number3,
  }) {
    this.add = add;
    this.subtraction = subtraction;
    this.multiplication = multiplication;
    this.division = division;
    this.number1 = number1;
    this.number2 = number2;
    this.number3 = number3;
    notifyListeners();
  }
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void next() {
    if (_currentIndex < result.length - 1) {
      _currentIndex++;
      notifyListeners();
    }
  }

  ///list matematik amallar uchun

  List<double> listOne({
    required int n1,
    required int n2,
    required int n3,
    required int n4,
  }) {
    list1 = List.generate(
      number3,
      (_) => Random().nextInt(number2 - number1 + 1) + number1,
    );
    list2 = List.generate(
      number3,
      (_) => Random().nextInt(number2 - number1 + 1) + number1,
    );

    result.clear();

    if (n1 == 1) {
      //add
      for (int i = 0; i < number3; i++) {
        result.add(list1[i] + list2[i].toDouble());
      }
    }
    if (n2 == 2) {
      // minus
      for (int i = 0; i < number3; i++) {
        result.add(list1[i] - list2[i].toDouble());
      }
    }
    if (n3 == 3) {
      // kopaytirish
      for (int i = 0; i < number3; i++) {
        result.add(list1[i] * list2[i].toDouble());
      }
    }
    if (n4 == 4) {
      //bolish
      for (int i = 0; i < number3; i++) {
        if (list2[i] != 0) {
          result.add(list1[i] / list2[i]);
        } else {
          result.add(0);
        }
      }
    }
    print(result);
    notifyListeners();
    return result;
  }
}
