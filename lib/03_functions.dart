void functionPlayground() {
  classicalFunctions();
  optionalParameters();
}

///////////////////////////////
// 다음 코드는 기존의 함수와 유사함  //
///////////////////////////////

void printMyName(String name) {
  print('Hello $name');
}

int add(int a, int b) {
  return a + b;
}

int factorial(int number) {
  if (number <= 0) {
    return 1;
  }

  return number * factorial(number - 1);
}

void classicalFunctions() {
  printMyName('Anna');
  printMyName('Irina');

  final sum = add(5, 3);
  print(sum);

  print('10 Factorial is ${factorial(10)}');
}

///////////////////////////
// 다음은 Dart 의 새로운 기능 //
///////////////////////////

// optional parameters - 대괄호
void unnamed([String? name, int? age]) {
  final actualName = name ?? 'Unknown';
  final actualAge = age ?? 0;
  print('$actualName is $actualAge years old.');
}

// named optional parameters - 중괄호
void named({String? greeting, String? name}) {
  final actualGreeting = greeting ?? 'Hello';
  final actualName = name ?? 'Mystery Person';
  print('$actualGreeting, $actualName!');
}

// 필수 파라미터와 옵션 파라미터를 같이 사용
// 옵션 파라미터도 기본값을 가질 수 있음
String duplicate(String name, {int times = 1}) {
  String merged = '';
  for (int i = 0; i < times; i++) {
    merged += name;
    if (i != times - 1) {
      merged += ' ';
    }
  }

  return merged;
}

void optionalParameters() {
  unnamed('Huxley', 3);
  unnamed();

  // Notice how parameters can be in any order
  // Flutter uses this a lot.  You should too.
  named(greeting: 'Greetings and Salutations');
  named(name: 'Sonia');
  named(name: 'Alex', greeting: 'Bonjour');

  final multiply = duplicate('Mikey', times: 3);
  print(multiply);
}
