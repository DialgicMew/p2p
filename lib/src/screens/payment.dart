import 'package:fds/src/widgets/appBar.dart';
import 'package:fds/src/widgets/textInput.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  static const paymentRoute = 'Payment';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF0F1F0),
        appBar: AppBarCustom('Payment', context).returnWidget(),
        body: Center(
          child: ListView(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: MediaQuery.of(context).size.height * 0.01,
            ),
            scrollDirection: Axis.vertical,
            children: <Widget>[
              TextInput(labelText: 'Account Name'),
              TextInput(labelText: 'Account Number'),
              TextInput(labelText: 'Bank Name'),
              TextInput(labelText: 'IFSC Code'),
              SaveButton(),
            ],
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
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.015),
        height: 50,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Save',
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
            Radius.circular(50),
          ),
        ),
      ),
    );
  }
}
