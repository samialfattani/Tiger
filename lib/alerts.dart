import 'package:flutter/material.dart';


class Alerts extends StatefulWidget 
{
  final String title='';

  @override
  _AlertState createState() => _AlertState();
}

class _AlertState extends State<Alerts> {
  
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter()
  {
    setState((){
      if(_counter > 0)
      {
      _counter--;
      showSnakBar();
      }
    });
  }

//the status of Scaffold​
final GlobalKey<ScaffoldState> scaffoldStateKey = new GlobalKey<ScaffoldState>();
void showSnakBar()
{
  scaffoldStateKey.currentState.showSnackBar(
    new SnackBar(
      content: Text('Counter Decreased'),
      action: SnackBarAction(
        label: "UNDO",
        onPressed: _incrementCounter,
      ),
    )
    
  );
}



  Future<void> _showMyDialog() async 
  {

  return showDialog<void>(
      context: context,
      barrierDismissible: false, // on false, user must tap the close button!​
      builder: (BuildContext context)
      {
        return AlertDialog(
          title: Text('Dialog Test'),
          content: SingleChildScrollView(                      
              child: ListBody(
                children: [
                  Text('this an alert dialog test.')
                  ],
                )
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('Ok2'),
                onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void _showBottomSheet() 
  {
    showModalBottomSheet(
      context: context, 
      builder: (BuildContext context){
        return new Container(
          padding: EdgeInsets.all(22.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Hello this is Buttom Alert  '),
              RaisedButton(
                child: Text('close'),
                onPressed: ()  => Navigator.pop(context) )
            ],
          ),
        );
      });
  }

  Future<void> _showSimpleDialog() async 
  {
    var myBuilder = (BuildContext context)
    {
      return new SimpleDialog(
        title: new Text('This is a test simple dialog'),
        children: <Widget>[
          new SimpleDialogOption(child: Text('YES'), onPressed: ()=> Navigator.pop(context),),
          new SimpleDialogOption(child: Text('NO'), onPressed: ()=> Navigator.pop(context),),
        ],
      );
    };

    await showDialog(
      context: context,
      builder: myBuilder
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldStateKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:
       Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              onPressed: _decrementCounter,
              child: Icon(Icons.remove),
            ),
            RaisedButton(
              onPressed: _showMyDialog,
              child: Text("Show Alert"),
            ),
            RaisedButton(
              onPressed: _showBottomSheet,
              child: Text("Show Bottom Sheet"),
            ),
            RaisedButton(
              onPressed: _showSimpleDialog,
              child: Text("Show Simple Dialog"),
            ),
            Image.asset('images/bears.png', height: 100),
          ],
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add), 
      ),
    );
  }


}