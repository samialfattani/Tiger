import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePicker extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ImagePicker> 
{
  final picker = ImagePicker();

  Future getImage() async 
  {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
      } else {
        print('No image selected.');
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title: Text("Image View Example")),
          body: new Column(
            children: [
              new Container(child: null ),
              new RaisedButton(child: Text('take'), onPressed: getImage)

            ],
          )
          ,

        );
  }
}