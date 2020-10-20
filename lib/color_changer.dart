import 'package:flutter/material.dart';


class ColorChanger extends StatefulWidget {
  @override
  ColorState createState() => ColorState();
}

class ColorState extends State<ColorChanger> {
  Color _containerColor = Colors.yellow;

  void changeColor() {
    setState(() {
      if (_containerColor == Colors.yellow) {
        _containerColor = Colors.teal;
    
      }
      else
      _containerColor = Colors.yellow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'stateful widget',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text("Stateful Widget example")),
          body: Container(decoration: BoxDecoration(color: _containerColor)),
          floatingActionButton: FloatingActionButton(
            onPressed: changeColor,
            child: Icon(Icons.brush),
            tooltip: "change color",
          ),
        ));
  }
}