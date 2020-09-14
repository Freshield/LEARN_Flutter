import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('here');
    var args = ModalRoute.of(context).settings.arguments;
    print(args);
    final wordPair = new WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(wordPair.toString()),
          onPressed: (){
            Navigator.pop(context);
            print('pop');
          },
        ),
      ),
    );
  }
}