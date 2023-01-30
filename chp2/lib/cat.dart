import 'package:chp2/animal.dart';

class Cat extends Animal {
  Cat.initFromName({required String name}) : super.initFromName(name: name);

  @override
  void eat() {
    super.eat();
    print('mew');
  }
}