import 'package:flutter/material.dart';

class AccountTile extends StatelessWidget {
  AccountTile({this.icon, this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, text);
        },
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        leading: Icon(
          icon,
          color: Color(0xff37474f),
        ),
        title: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
