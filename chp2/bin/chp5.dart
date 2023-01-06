

import 'dart:io';

import 'chp2.dart';

Future<String> getNetworkData() {
  return Future(() {
    sleep(Duration(seconds: 2));
    // throw Exception('Network error');
    return 'freshield';
  });
}


void main() async {
  print('start');
  // Future<String> f = getNetworkData();
  // f.then((value) => print(value)).catchError((e) {
  //   print(e);
  // });
  var name = await getNetworkData();
  print('here');
  var name1 = await getNetworkData();
  print(name);
  print(name1);
  print('end');
}