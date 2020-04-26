import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarCustom {
  AppBarCustom(this.text, this.context);
  final String text;
  final BuildContext context;

  returnWidget() {
    return AppBar(
      centerTitle: true,
      title: Text(
        text,
        style: GoogleFonts.varelaRound(
          color: Color(0xff283060),
          fontSize: 25,
        ),
      ),
      backgroundColor: Color(0xffF2F5FB),
      elevation: 0,
      leading: IconButton(
        icon: Icon(EvaIcons.arrowIosBackOutline),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      iconTheme: IconThemeData(
        color: Color(0xff283060),
      ),
    );
  }
}
