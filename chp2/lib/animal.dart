

class Animal {
  late String name;
  Animal() {
    print('Animal');
  }
  Animal.initFromName({required this.name});
  void eat() {
    print('$name is eating');
  }
}