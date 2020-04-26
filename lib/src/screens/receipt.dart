import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../widgets/reusableTile.dart';

class Receipt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              TotalMoney(200),
              Text(
                'Total Orders',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 10, width: double.infinity),
            ],
          ),
          //tiles for display
          ReusableTile(),
          ReusableTile(),
          ReusableTile(),
          ReusableTile(),
          ReusableTile(),
          ReusableTile(),
          ReusableTile(),
        ],
      ),
    );
  }
}

class TotalMoney extends StatelessWidget {
  TotalMoney(this.totalMoney);
  final int totalMoney;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.1,
          bottom: MediaQuery.of(context).size.height * 0.05),
      child: Text(
        '₹' + totalMoney.toString(),
        style: TextStyle(
          fontSize: 80,
          fontWeight: FontWeight.w900,
          color: Color(0xff283060),
        ),
      ),
    );
  }
}
