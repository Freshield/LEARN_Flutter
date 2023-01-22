import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text(' Home Page'),
        ),
        body: MyImage(),
      ),
    );
  }
}

class MyImage extends StatefulWidget {
  const MyImage({Key? key}) : super(key: key);

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png",
          fit: BoxFit.cover
        ),
        Image.asset('images/test.png')
      ],
    );
  }
}


class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, height: 200, color: Colors.red,
      child: ElevatedButton(
        child: const Text('press me'),
        onPressed: () => print('clicked me'),
      ),
    );
  }
}


class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, height: 200, color: Colors.red,
      child: const Text(
        'Freshieldfasdf',
        style: TextStyle(
          fontSize: 30,
          fontStyle: FontStyle.italic,
          backgroundColor: Colors.blue,
          decoration: TextDecoration.lineThrough,
        ),
        textAlign: TextAlign.right,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
