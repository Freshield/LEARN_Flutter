import 'package:chp2/animal.dart';
import 'package:chp2/cat.dart';


void main() {
  Animal animal = Animal.initFromName(name: 'Jerry');
  animal.eat();

  Cat cat = Cat.initFromName(name: 'Tom');
  cat.eat();
}