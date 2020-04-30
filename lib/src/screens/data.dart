import 'package:fds/src/director.dart';
import 'package:fds/src/widgets/textInput.dart';
import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  static const dataRoute = 'Data';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF0F1F0),
        body: Center(
          child: ListView(
            padding: EdgeInsets.all(20),
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Just a few more things before we start!',
                  style: TextStyle(
                    fontSize: 45,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Personal Details',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
              ),
              TextInput(
                labelText: 'Name',
              ),
              TextInput(
                labelText: 'Gender',
              ),
              TextInput(
                labelText: 'Email',
              ),
              ListTile(
                title: Text(
                  'Address Details',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
              ),
              TextInput(
                labelText: 'Line 1',
              ),
              TextInput(
                labelText: 'Line 2',
              ),
              TextInput(
                labelText: 'District',
              ),
              TextInput(
                labelText: 'City',
              ),
              TextInput(
                labelText: 'Pincode',
              ),
              TextInput(
                labelText: 'State',
              ),
              ListTile(
                title: Text(
                  'Payment Details',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text('This is where you will recieve your payment'),
              ),
              TextInput(
                labelText: 'Account Name',
              ),
              TextInput(
                labelText: 'Account Number',
              ),
              TextInput(
                labelText: 'Bank Name',
              ),
              TextInput(
                labelText: 'IFSC Code',
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Back',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Director.directorRoute);
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
