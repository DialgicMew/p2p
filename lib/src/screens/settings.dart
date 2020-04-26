import 'package:fds/src/widgets/appBar.dart';
// import 'package:fds/src/widgets/textInput.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static const settingsRoute = 'Settings';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarCustom('Settings', context).returnWidget(),
        body: Center(
          child: Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: MediaQuery.of(context).size.height * 0.01,
            ),
            color: Color(0xffF2F5FB),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[],
            ),
          ),
        ),
      ),
    );
  }
}
