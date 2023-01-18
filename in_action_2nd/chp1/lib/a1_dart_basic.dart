

main() {
  var t = 'hello world';
  print(t);

  dynamic t1;
  Object x;
  t1 = 'hello world';
  x = 'hello object';
  t1 = 1000;
  x = 1000;
  print(t1);
  print(x);

  dynamic a;
  Object b = '';
  a = '';
  print(a.length);

  final str = 'hi world';
  const str1 = 'hi world';
  print(str);
  print(str1);

  int i = 8;
  int? j;
  late int k;
  k = 9;

  print(i * 8);
  print(j);
  print(k);

  int? i1;
  Function? fun;
  say() {
    if (i1 != null) {
      print(i1 * 8);
    }
    fun?.call();
  }
  i1 = 1;
  fun = () => print('fun');
  say();

  var say1 = (str) {
    print(str);
  };
  say1('hi world');

  void execute(var callback) {
    callback();
  }
  execute(() => print('xxx'));

  String say2(String from, String msg, [String? device]) {
    var result = '$from says $msg';
    if (device != null) {
      result = '$result with a $device';
    }
    return result;
  }
  print(say2('Bob', 'Howdy'));
  print(say2('Bob', 'Howdy', 'somke signal'));

  void enableFlags({bool? bold, bool? hidden}) {
    print('$bold and $hidden');
  }
  enableFlags(bold: true, hidden: false);


  var dog = Dog();
  dog.eat();
  var man = Man();
  man.code();
}

class Person {
  say() {
    print('say');
  }
}

mixin Eat {
  eat() {
    print('eat');
  }
}

mixin Walk {
  walk() {
    print('walk');
  }
}

mixin Code {
  code() {
    print('code');
  }
}

class Dog with Eat, Walk {}
class Man extends Person with Eat, Walk, Code {}