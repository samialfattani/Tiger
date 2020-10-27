import 'package:flutter/material.dart';


class ImageView extends StatefulWidget {
  @override
  ColorState createState() => ColorState();
}

class ColorState extends State<ImageView> 
{
  Color _containerColor = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title: Text("Image View Example")),
          body: Container(child: Image(image: AssetImage('images/bears.png'),) ),

        );
  }
}