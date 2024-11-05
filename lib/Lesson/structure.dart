import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Image.network("https://www.shutterstock.com/image-photo/branch-blue-fir-tree-snow-260nw-681135559.jpg", width: 50, height:50)
            ],
            
          ),

          backgroundColor: Colors.purpleAccent,
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            'Hello, Paasouy!',
            style: TextStyle(fontSize: 40, color: Colors.amber),
          ),
        ),
      ),
    );
  }
}
