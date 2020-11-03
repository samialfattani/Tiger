import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePicker extends StatefulWidget {
  @override
  ColorState createState() => ColorState();
}

class ColorState extends State<ImagePicker> 
{
  PickedFile myimage = null;
  pickImageFromStudio() async 
  {
    //PickedFile img = await ImagePicker().getImage(source: ImageSource.gallery);
    // setState(() {
    //   myimage = img;
    // });



  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title: Text("Image View Example")),
          body: new Column(
            children: [
              new Container(child: null ),
              new RaisedButton(child: Text('take'), onPressed: pickImageFromStudio)

            ],
          )
          ,

        );
  }
}