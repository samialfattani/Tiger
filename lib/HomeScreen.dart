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
            

          ],)
      );

  }//end build
}