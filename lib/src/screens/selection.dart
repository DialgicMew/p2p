import 'package:flutter/material.dart';
import './data.dart';

class Selection extends StatelessWidget {
  static const selectionRoute = 'selection';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF0F1F0),
        body: Center(
          child: ListView(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: MediaQuery.of(context).size.height * 0.01,
            ),
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(5, 20, 20, 20),
                child: Text(
                  "What do you want to do?",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.black,
                    fontSize: 90,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                margin: EdgeInsets.only(bottom: 50),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(20),
                    color: Colors.amber,
                    child: Text(
                      'EAT FOOD',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    onPressed: () {
                      // Navigator.pushNamed(context, Error1.error1Route);
                    },
                  ),
                  SizedBox(height: 20),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(20),
                    color: Colors.cyan,
                    child: Text(
                      'MAKE FOOD',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Data.dataRoute);
                    },
                  ),
                  SizedBox(height: 10)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
