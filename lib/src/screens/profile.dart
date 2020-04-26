import 'package:fds/src/widgets/appBar.dart';
import 'package:fds/src/widgets/textInput.dart';
import 'package:flutter/material.dart';
import '../widgets/ImageOval.dart';

class Profile extends StatelessWidget {
  static const profileRoute = 'Profile';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarCustom('Profile', context).returnWidget(),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: Color(0xffF2F5FB),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    ImageOval(),
                  ],
                ),
                TextInput('Name'),
                TextInput('Gender'),
                TextInput('Mobile'),
                TextInput('Email'),
                TextInput('Birthday'),
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
