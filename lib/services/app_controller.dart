sealed class AppController {
  static bool? check(int? number, int? number2, int? number3) {
    if (number == null || number2 == null || number3 == null) return false;
    if (number > number2 && number != 0 && number2 != 0) return true;
    if (number <= number3 && number2 < number3) return null;
    return false;
  }
static String math(int selectCard){
    String belgi="+";
    if(selectCard==1)belgi="-";
    if(selectCard==2)belgi="X";
    if(selectCard==3)belgi="/";
    return belgi;
}
static int correct(int a,int b,int res,int selectCard){
    int correct=0;
    if(selectCard==0){
      if(a+b==res) correct++;
    }
    if(selectCard==1){
      if(a-b==res) correct++;
    }
    if(selectCard==2){
      if(a*b==res) correct++;
    }
    if(selectCard==3){
      if(a~/b==res) correct++;
    }


    return correct;

}
static int wrong(int a,int b,int res,int selectCard){
  int wrong=0;
  return wrong;
}
}
