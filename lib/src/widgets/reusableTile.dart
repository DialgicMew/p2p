import 'package:fds/src/screens/orderDetails.dart';
import 'package:flutter/material.dart';

class ReusableTile extends StatelessWidget {
  const ReusableTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, OrderDetails.orderDetailsRoute);
        },
        contentPadding: EdgeInsets.all(20),
        title: Text(
          'Vatsalya Singh',
          style: TextStyle(
            fontSize: 25,
            color: Color(0xff283060),
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Caramel Milk',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              'Sambhar',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        trailing: Text(
          '₹20',
          style: TextStyle(
            fontSize: 30,
            color: Color(0xff283060),
          ),
        ),
      ),
      margin: EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
