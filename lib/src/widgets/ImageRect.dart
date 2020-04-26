import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageRect extends StatefulWidget {
  @override
  _ImageRectState createState() => _ImageRectState();
}

class _ImageRectState extends State<ImageRect> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: GestureDetector(
        onTap: getImage,
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            child: _image == null
                ? Icon(Icons.add_a_photo)
                : Image.file(
                    _image,
                    fit: BoxFit.cover,
                  ),
          ),
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            color: Color(0xffe0e0e0),
          ),
        ),
      ),
    );
  }
}
