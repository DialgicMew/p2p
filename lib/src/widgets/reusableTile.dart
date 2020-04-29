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
      padding: EdgeInsets.all(7),
      margin: EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
