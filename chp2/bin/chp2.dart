
printName(String name, int age, [String sex = 'Male']) {
  print('name $name, age: $age, sex: $sex');
}

printName2({name='', age=-1, sex=''}) {
  print('name $name, age: $age, sex: $sex');
}

void main(List<String> arguments) {
  print('Hello world: $arguments');
  int age = 28;
  bool flag = true;
  var list = [1, 2, 2, 3, 4, 5, 'freshield'];
  Set set = Set();
  set.addAll(list);
  print(set);
  print(list);
  var m = {'name': 'freshield', 'age': age};
  print('my name is ${m['name']}');

  final age1;
  age1 = 28;
  const age2 = 30;
  print(age1);
  print(age2);

  printName('freshield', 28);
  printName2(name: 'freshield', sex: 'Male');
}
