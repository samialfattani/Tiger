
import 'package:flutter/material.dart';
import 'list_with_stateless.dart';
import 'HomeScreen.dart';
import 'color_changer.dart';
import 'register.dart';
import 'image_view.dart';

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
        '/ButtomBar':(BuildContext context) => new MyList(),
        '/ColorChanger':(BuildContext context) => new ColorChanger(),
        '/Register':(BuildContext context) => new InnerHome(),
        '/imageView':(BuildContext context) => new ImageView(),
      },
    ); 
  } // Widget

} //StatelessWidget 
