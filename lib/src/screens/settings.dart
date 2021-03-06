import 'package:fds/src/widgets/appBar.dart';
// import 'package:fds/src/widgets/textInput.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static const settingsRoute = 'Settings';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF0F1F0),
        appBar: AppBarCustom('Settings', context).returnWidget(),
        body: Center(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
