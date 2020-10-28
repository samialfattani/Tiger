import 'package:first_mapp/inputs.dart';
import 'package:flutter/material.dart';


class TstApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Demo Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyDrawer(),
    );
  }
}

class MyDrawer extends StatelessWidget {
  String title;
  MyDrawer({Key key, this.title='Drawer page'}): super(key: key);
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('home'),
              decoration: BoxDecoration(color: Colors.blue[800]),
            ),
            ListTile(
               title: FlatButton( 
               
               //IconButton(
               child: Text('Rigster'),
               
                // icon: Icon(Icons.accessibility),
               onPressed: () {},
            )),

            ListTile(
              title: RaisedButton(
                child: Text("test"),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: Text(
        'Hello World',
      )),
    );
  }
}
