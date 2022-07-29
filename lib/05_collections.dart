import 'package:dart_basic/04_classes.dart';

void collectionPlayground() {
  listPlayground();
  mapPlayground();
  setPlayground();
  collectionControlFlow();
}

void listPlayground() {
  // 리스트 만들기
  final numbers = [1, 2, 3, 5, 7];

  numbers.add(10);
  numbers.addAll([4, 1, 35]);

  // 인덱스를 이용한 할당
  numbers[1] = 15;

  print('The second nunber is ${numbers[1]}');

  // 리스트 반복문
  for (int number in numbers) {
    print(number);
  }
}

void mapPlayground() {
  // 맵 만들기
  final Map ages = {
    'Mike': 18,
    'Peter': 35,
    'Jennifer': 26,
  };

  // 인덱스(키)를 이용한 할당
  // A String in this case
  ages['Tom'] = 48;

  final ageOfPeter = ages['Peter'];
  print('Peter is $ageOfPeter years old.');

  ages.remove('Peter');

  ages.forEach((var name, var age) {
    print('$name is $age years old');
  });

  final james = Name('James', 'Buchanan');
  final brenda = Name('Brenda', 'Fitzpatrick');

  final namesAndAges = <Name, int>{
    james: 83,
    brenda: 53,
  };
}

void setPlayground() {
  // 셋 만들기, 맵과 유사하지만 키가 없음
  final ministers = {'Justin', 'Stephen', 'Paul', 'Jean', 'Kim', 'Brian'};
  ministers.addAll({'John', 'Pierre', 'Joe', 'Pierre'});

  // 특정 연산은 리스트 보다 속도가 빠름
  final isJustinAMinister = ministers.contains('Justin');
  print(isJustinAMinister);

  // 셋은 중복이 제거됨
  for (String primeMinister in ministers) {
    print('$primeMinister is a Prime Minister.');
  }
}

void collectionControlFlow() {
  // 리스트 내부에서 if 문, for 문, 스프레드 연산자 사용가능
  final addMore = true;
  final randomNumbers = [
    34,
    232,
    54,
    32,
    if (addMore) ...[
      534343,
      4423,
      3432432,
    ],
  ];

  final duplicated = [
    for (int number in randomNumbers) number * 2,
    for (int i = 0; i < 100; i++) i,
  ];

  print(duplicated);
}
