import 'package:fds/src/widgets/appBar.dart';
import 'package:fds/src/widgets/textInput.dart';
import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  static const addressRoute = 'Address';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarCustom('Address', context).returnWidget(),
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
              children: <Widget>[
                TextInput('Line 1'),
                TextInput('Line 2'),
                TextInput('District'),
                TextInput('City'),
                TextInput('Pincode'),
                TextInput('State'),
                SaveButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SaveButton extends StatelessWidget {
  const SaveButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.015),
        height: 50,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'save',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
