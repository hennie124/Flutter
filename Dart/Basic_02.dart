void main() {
  String str = "abc";
  print(str);

  var name = "def";
  print(name);

  //문자열 보간법
  int intNum1 = 179;
  int intNum2 = 70;

  print("intNum1과 intNum2 의 합은 $intNum1 + $intNum2 입니다.");
  print("intNum1과 intNum2 의 합은 ${intNum1 + intNum2} 입니다.");

//dynamic 은 숫자와 문자 둘 다 사용가능
  dynamic name1 = "장비";
  print(name1);

  name1 = 10;
  print(name1);
}
