import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) 
  {
    return 
      new Scaffold(
          appBar: new AppBar(
                title: Text('Main Page'),
           ),
          body: Column(children: [
            new RaisedButton(
              onPressed: () => Navigator.pushNamed(context, '/MyList' ), 
              child: new Text('List view')
              ),
            new RaisedButton(
              onPressed: () => Navigator.pushNamed(context, '/ColorChanger' ), //by mohammad anas
              child: new Text('Color Changer')
              ),  
            new RaisedButton(
              onPressed: () => Navigator.pushNamed(context, '/register' ), //by yazeed
              child: new Text('Register')
              ),  
            new RaisedButton(
              onPressed: () => Navigator.pushNamed(context, '/imageView' ), //by Sami
              child: new Text('Image View')
              ),  
            new RaisedButton(
              onPressed: () => Navigator.pushNamed(context, '/inputs' ), //by yazeed
              child: new Text('inputs')
              ),  
              new RaisedButton(
              onPressed: () => Navigator.pushNamed(context, '/mydrawer' ), //by yazeed
              child: new Text('mydrawer')
              ),
              new RaisedButton(
              onPressed: () => Navigator.pushNamed(context, '/Alerts' ), //by khalid maddah
              child: new Text('Alerts')
              ),
              

          ],)
      );

  }//end build
}