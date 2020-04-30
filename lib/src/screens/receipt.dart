import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../widgets/reusableTile.dart';
import '../widgets/reusableLive.dart';

class Receipt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          TotalMoney(200),
          Text(
            'Orders',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'On-Going',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          ReusableLive(),
          ReusableLive(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Completed',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: <Widget>[
              ReusableTile(),
              ReusableTile(),
              ReusableTile(),
              ReusableTile(),
              ReusableTile(),
              ReusableTile(),
              ReusableTile(),
            ],
          )
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
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 80,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w200,
          color: Colors.black,
        ),
      ),
    );
  }
}
