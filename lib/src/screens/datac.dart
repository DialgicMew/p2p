import 'package:fds/src/widgets/appBar.dart';
// import 'package:fds/src/widgets/textInput.dart';
import 'package:flutter/material.dart';

class Error1 extends StatelessWidget {
  static const error1Route = 'error1';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF0F1F0),
        appBar: AppBarCustom('sign up C', context).returnWidget(),
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
