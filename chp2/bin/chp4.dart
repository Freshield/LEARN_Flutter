

printNameLength(String? name) {
  print('$name -- ${name?.length}');
}


void main() {
  printNameLength('Here');
  printNameLength(null);
  List list = <String?>['Simba', 'Jerry', 'Tom', null];
  list.forEach((element) {
    printNameLength(element);
  });
}