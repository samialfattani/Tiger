
import 'package:first_mapp/register.dart';
import 'package:flutter/material.dart';
import 'list_with_stateless.dart';
import 'HomeScreen.dart';
import 'color_changer.dart';
import 'mydrawer.dart';
import 'image_view.dart';
import 'inputs.dart';

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
        '/mydrawer':(BuildContext context) => new MyDrawer(),
        '/imageView':(BuildContext context) => new ImageView(),
        '/inputs':(BuildContext context) => new Inputs(),
        '/register':(BuildContext context) => new SignUp(),
      },
    ); 
  } // Widget

} //StatelessWidget 
