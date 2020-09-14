import 'package:flutter/material.dart';


class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('here');
    var args = ModalRoute.of(context).settings.arguments;
    print(args);
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go back!'),
          onPressed: (){
            Navigator.pop(context);
            print('pop');
          },
        ),
      ),
    );
  }
}