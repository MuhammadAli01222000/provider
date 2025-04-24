import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:providers/services/app_controller.dart';
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
  List<int> result = [];

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

  List<int> listOne({
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

    if (n1 == 0) {
      //add
      print("ADD $list1 ");
      print("ADD $list2 ");
      for (int i = 0; i < number3; i++) {
        result.add(list1[i] + list2[i]);
      }
      print("ADD  result $result ");

    }
    if (n2 == 1) {
      // minus

      for (int i = 0; i < number3; i++) {
        result.add(list1[i] - list2[i]);
      }
      print("minus $list1 ");
      print("minus $list2 ");
      print("minus res  $result ");
    }
    if (n3 == 2) {
      // kopaytirish
      for (int i = 0; i < number3; i++) {
        result.add(list1[i] * list2[i]);
      }
      print("X $list1 ");
      print("X $list2 ");
      print("X res  $result ");
    }
    if (n4 == 3) {
      //bolish
      for (int i = 0; i < number3; i++) {
        if (list2[i] != 0) {
          result.add((list1[i] / list2[i]).round());
        } else {
          result.add(0);
        }
      }
      print("bolish $list1 ");
      print("bolish $list2 ");
      print("bolish res  $result ");
    }
    //print(result);
    notifyListeners();
    return result;
  }

  ///generate variant
  List<int> variantlar(int index) {
    // togri javob
    int correctAnswer = result[index];

/// notogti javob
    final List<int> randomJavob = [correctAnswer];

    while (randomJavob.length < 4) {
      int sonlar= correctAnswer + ([-3, -2, -1, 1, 2, 3]..shuffle()).first;
      if (!randomJavob.contains(sonlar)) {
        randomJavob.add(sonlar);
      }
    }

    randomJavob.shuffle(); /// shuffle qiilish
    return randomJavob;
  }

}
