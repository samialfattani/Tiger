
import 'package:flutter/material.dart';
import 'list_with_stateless.dart';
import 'HomeScreen.dart';
void main() =>  runApp(MyApp());

class MyApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    
    return 
    new MaterialApp(
      home: new HomeScreen(),
      
      routes: <String, WidgetBuilder>{
        '/MyList': (BuildContext context) => new MyList(),
      },
    ); 
  } // Widget

} //StatelessWidget 
