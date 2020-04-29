import 'package:fds/src/screens/orderDetails.dart';
import 'package:flutter/material.dart';

class ReusableLive extends StatelessWidget {
  const ReusableLive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, OrderDetails.orderDetailsRoute);
            },
            title: Text(
              'Vatsalya Singh',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Caramel Milk',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  'Sambhar',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            trailing: Text(
              '₹20',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),
          CheckBoxR()
        ],
      ),
      padding: EdgeInsets.all(7),
      margin: EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

class CheckBoxR extends StatefulWidget {
  @override
  _CheckBoxRState createState() => _CheckBoxRState();
}

class _CheckBoxRState extends State<CheckBoxR> {
  int selectedRadio = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('Recieved'),
          Radio(
              groupValue: selectedRadio,
              activeColor: Colors.green,
              value: 1,
              onChanged: (value) {
                setState(() {
                  selectedRadio = value;
                });
              }),
          Text('Preparing'),
          Radio(
              groupValue: selectedRadio,
              activeColor: Colors.green,
              value: 2,
              onChanged: (value) {
                setState(() {
                  selectedRadio = value;
                });
              }),
          Text('Prepared'),
          Radio(
              groupValue: selectedRadio,
              activeColor: Colors.green,
              value: 3,
              onChanged: (value) {
                setState(() {
                  selectedRadio = value;
                });
              }),
        ],
      ),
    );
  }
}
