import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  TextInput({this.labelText, this.controller});
  final String labelText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.015),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: TextField(
          style: TextStyle(fontSize: 20),
          controller: controller == null ? null : controller,
          cursorColor: Colors.black,
          keyboardType: TextInputType.multiline,
          maxLines: null,
          textInputAction: TextInputAction.go,
          decoration: InputDecoration(
            labelText: labelText,
            hasFloatingPlaceholder: true,
            hintStyle: TextStyle(fontSize: 20),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
          ),
        ),
      ),
    );
  }
}
