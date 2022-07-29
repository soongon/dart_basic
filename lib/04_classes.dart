import 'package:meta/meta.dart';

// immutable 객체
class Name {
  final String first;
  final String last;

  const Name(this.first, this.last);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Name &&
          runtimeType == other.runtimeType &&
          first == other.first &&
          last == other.last;

  @override
  int get hashCode => first.hashCode ^ last.hashCode;

  @override
  String toString() {
    return '$first $last';
  }

  // 팩토리 패턴을 적용한 팩토리 메소드
  factory Name.fromValues({
    String? title,
    @required String? first,
    @required String? last,
  }) {
    // optional properties can be annotated @required,
    // but this is just for the IDE, not the language.
    // This can enforced with assert statements
    assert(first != null);
    assert(last != null);

    if (title != null) {
      return OfficialName(title, first!, last!);
    }

    return Name(first!, last!);
  }
}

// 하위 클래스; immutable
class OfficialName extends Name {
  // Private 속성은 underscore로 시작됨
  final String _title;

  // super 로 데이터를 전달하기 위해 생성자 뒤에 콜론을 사용
  const OfficialName(this._title, String first, String last)
      : super(first, last);

  @override
  String toString() {
    return '$_title. ${super.toString()}';
  }
}

// Abstract class in Dart can function the same as Interfaces/Protocols
abstract class Greeter {
  String sayHello();
}

// Mixins are like Protocol Extensions.
// Here you can define default behaviour
// The only difference if you do not have to define
// an interface beforehand
mixin DefaultedGreeter implements Greeter {
  String get name;

  @override
  String sayHello() {
    return 'Hello $name';
  }
}

// The 'with' keyword is how you conform to a mixin
class ConcreteGreeter with DefaultedGreeter {
  // Putting an underscore before a property
  // makes it private
  final Name _name;

  ConcreteGreeter(this._name);

  @override
  String get name => _name.toString();
}

void classPlayground() {
  final name = OfficialName('Mr', 'Francois', 'Rabelais');
  final greeter = ConcreteGreeter(name);
  final message = greeter.sayHello();
  print(message);
}
