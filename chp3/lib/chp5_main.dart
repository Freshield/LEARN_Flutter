import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
                minWidth: 100, minHeight: 100, maxWidth: 300),
            child: Container(
              width: 400,
              height: 400,
              decoration: const BoxDecoration(color: Colors.blue),
              child: const Text('hello world'),
            ),
          ),
        ),
      ),
    );
  }
}

class AlignWidget extends StatelessWidget {
  const AlignWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text('hello world',
            style: TextStyle(color: Colors.blue, fontSize: 20)),
      ),
    );
  }
}
