// 변수와 관련된 함수 실행하는 메인 함수
void variablePlayground() {
  basicTypes();
  untypedVariables();
  typeInterpolation();
  immutableVariables();
}

// 자바와 유사한 타이핑 방식
void basicTypes() {
  int four = 4;
  double pi = 3.14;
  num someNumber = 24601;
  bool yes = true;
  bool no = false;

  print(four);
  print(pi);
  print(someNumber);
  print(yes);
  print(no);
}

// 타입을 특별히 지정하지 않을 때 사용
// 실제로는 잘 사용하지 않음
void untypedVariables() {
  dynamic something = 14.2;
  print(something.runtimeType);
}

// 자바스크립트 개발자에게 익숙한 방식
// 한번 설정된 타입 변경 불가
void typeInterpolation() {
  var anInteger = 15;
  var aDouble = 27.6;
  var aBoolean = false;

  print(anInteger.runtimeType);
  print(anInteger);

  print(aDouble.runtimeType);
  print(aDouble);

  print(aBoolean.runtimeType);
  print(aBoolean);
}

// `final` 키워드는 변수의 할당을 단 한번만 허용 - 권장되는 방식
// immutable, 불변
void immutableVariables() {
  final int immutableInteger = 5;
  final double immutableDouble = 0.015;

  // 타입 지정은 옵션
  final interpolatedInteger = 10;
  final interpolatedDouble = 72.8;

  print(interpolatedInteger);
  print(interpolatedDouble);

  const aFullySealedVariable = true;
  print(aFullySealedVariable);
}
