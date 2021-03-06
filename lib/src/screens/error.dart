import 'package:fds/src/widgets/appBar.dart';
import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  static const errorRoute = 'error';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF0F1F0),
        appBar: AppBarCustom('Error', context).returnWidget(),
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
