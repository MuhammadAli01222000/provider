sealed class AppController {
  static bool? check(int? number, int? number2, int? number3) {
    if (number == null || number2 == null || number3 == null) return false;
    if (number > number2 && number != 0 && number2 != 0) return true;
    if (number <= number3 && number2 < number3) return null;
    return false;
  }

  static List<int> mukammalSon(List<int> list) {
    int mukammal = 0;
    List<int> res = [6];
    for (var i = 0; i < list.length; i++) {
      if (i % i == 0) {
        mukammal += i;
      }
      if (list[i] == mukammal) {
        res.add(mukammal);
      }
    }
    return res;
  }
}
