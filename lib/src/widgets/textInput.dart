import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput(this.labelText);
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.015),
      child: TextField(
        style: TextStyle(
          color: Color(0xff283060),
          fontSize: 25,
        ),
        decoration: new InputDecoration(
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(width: 1, color: Colors.transparent),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(width: 1, color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(width: 1, color: Colors.transparent),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              width: 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(width: 1, color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(width: 1, color: Colors.red),
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xffcfd8dc),
            offset: Offset(0, 0),
            blurRadius: 5,
          )
        ],
      ),
    );
  }
}
