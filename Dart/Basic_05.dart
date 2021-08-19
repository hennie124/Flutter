import 'Basic_04.dart';

void main() async {
  await getVersionName().then((value) => print(value));
  print("end process");
}

//await가 먼저 실행되고 그 다음에 main에 있는 것이 실행됨.
Future<String> getVersionName() async {
  var versionName = await lookUpVersionName();
  return versionName;
}

String lookUpVersionName() {
  return "Flutter";
}
