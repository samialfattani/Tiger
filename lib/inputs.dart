import 'package:flutter/material.dart';


enum Gender { Male, Female }

class Inputs extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Inputs> {
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
          title: Text('Inputs'),
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
