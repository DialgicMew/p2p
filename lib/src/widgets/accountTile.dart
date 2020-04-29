import 'package:flutter/material.dart';

class AccountTile extends StatelessWidget {
  AccountTile({this.icon, this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.pushNamed(context, text);
      },
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Colors.black,
        ),
      ),
    );
  }
}
