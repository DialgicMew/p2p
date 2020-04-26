import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageOval extends StatefulWidget {
  @override
  _ImageOvalState createState() => _ImageOvalState();
}

class _ImageOvalState extends State<ImageOval> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: getImage,
      child: Container(
        child: ClipOval(
          child: _image == null
              ? Image.asset(
                  'assets/profile1.jpg',
                  fit: BoxFit.cover,
                )
              : Image.file(
                  _image,
                  fit: BoxFit.cover,
                ),
        ),
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.05,
            bottom: MediaQuery.of(context).size.height * 0.03),
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.amber,
        ),
      ),
    );
  }
}
