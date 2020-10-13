
import 'package:flutter/material.dart';


class MyList extends StatelessWidget 
{
  final List<Widget> lst = [];
  MyList()
  {
    for (var i = 0; i < 20; i++){
      var l = ListTile(
        title: Text('item $i'),
        onTap: () => print('click item $i'), );
      
      lst.add(l);      
    }
  }

  int x = 0;
  @override
  Widget build(BuildContext context) 
  {
    
    return new MaterialApp(
     home: Scaffold(
          appBar: new AppBar(
                    title: Text('ddddd'),
                    actions: [
                        IconButton(icon:  new Icon( Icons.account_balance_wallet ), 
                              onPressed: myAction_On_appbar )
                      ],
           ),
          body: ListView(children:lst,),
      )
    ); 
  } // Widget

  void myAction_On_appbar(){
    print( "hllllllllllllo " + (this.x+1).toString() );
  }

} //StatelessWidget 
