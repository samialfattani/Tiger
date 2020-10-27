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
      home: InnerHome(),
    );
  }
}

class InnerHome extends StatelessWidget {
  String title;
  InnerHome({Key key, this.title='Home Page'}): super(key: key);
  

  
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
               onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              },
            )),

            ListTile(
              title: RaisedButton(
                child: Text("test"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Test()));
                },
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

class SignUp extends StatelessWidget 
{
  
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                  title: FlatButton(
                child: Text('home'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
              )),
              ListTile(
                title: RaisedButton(
                  child: Text("test"),
                  onPressed: () {},
                ),
              ),
              ListTile(
                  title: FlatButton(
                child: Text('rigester'),
                onPressed: () {},
              ))
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Sign Up"),
        ),
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    //border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Name',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    labelText: 'PhoneNumber',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    border: OutlineInputBorder(),
                  ),
                ),
               
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 50.0),
                child: MaterialButton(
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    
                  },
                ),
              ),
            ],
          ),
        )));
  }
}

enum Gender { Male, Female }

class Test extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Test> {
  Color _pgcolor = Colors.white;
  bool isSwitched = false;
  bool isSwitched1 = false;
  bool valuefirst = false;
  bool valuesecond = false;
  Gender _character = Gender.Male;


// function to change the background color

  void PageColor() {
    setState( ()  {
      if (_pgcolor == Colors.white){
        _pgcolor = Colors.pink[100];
        return;
      }
      _pgcolor= Colors.white;
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _pgcolor,
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  
                  //RadioListTile

                  RadioListTile<Gender>(
          title:  Text('Male'),
          value: Gender.Male,
          groupValue: _character,
          onChanged: (Gender value) {
            setState(() {
              _character = value;
            });
          },
        ),
       
        RadioListTile<Gender>(
          title:  Text('Female'),
          value: Gender.Female,
          groupValue: _character,
          onChanged: (Gender value) {
            setState(() {
              _character = value;
            });
          },
        ),
          
           //Switch & SwitchListTile

              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    print(isSwitched);
                  });
                },
                activeTrackColor: Colors.blue,
                activeColor: Colors.blue,
              ),
              
              SwitchListTile(
                value: isSwitched1,
                title: Text('data'),
                subtitle: Text('data'),
                activeColor: Colors.red,
                secondary: Icon(Icons.access_time_sharp),
                onChanged: (value) {
                  setState(() {
                    isSwitched1 = value;
                    print(isSwitched1);
                  });
                },
              ),

                //Checkbox & CheckboxListTile

                CheckboxListTile(
                  title: Text('hello world'),
                  subtitle: Text('hello'),
                  secondary: Icon(Icons.access_alarm),
                  checkColor: Colors.black,
                  activeColor: Colors.white,
                  value: valuefirst,
                  onChanged: (bool value) {
                    setState(() {
                      this.valuefirst = value;
                    });
                  },
                ),
                
                Checkbox(
                    value: valuesecond,
                    onChanged: (bool value) {
                      setState(
                        () {
                          this.valuesecond = value;
                        },
                      );
                    })
                    
                    //RaisedButton
                    
                       ,RaisedButton(
                        child: Text('data'),
                        onPressed: () {},
                      ),
                    
                    
                    //FlatButton
                    
                    
                       FlatButton(
                        child: Text('data'),
                        onPressed: () {},
                      ),
                    
                    
                    //IconButton

                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.home),
                    )
              
             
              ,FloatingActionButton(
                onPressed: PageColor,
                child: Icon(Icons.colorize),
                tooltip: "change color",
              )
            ])
            ));
  }
}

                 // icon: Icon(Icons.accessibility),