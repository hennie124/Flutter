void main() {
  checkVersion();
  print('end process');
}

// 같이 실행은 안되고 먼저 checkVersion 먼저 하고 그 다음에 main안에 있는 것, 그 다음은 await , 마지막은 끝에 있는 것
Future checkVersion() async {
  print("----------");
  var version = await lookUpVersion();
  print(version);
}

int lookUpVersion() {
  return 12;
}
