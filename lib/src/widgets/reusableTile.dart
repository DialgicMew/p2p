import 'package:fds/src/screens/orderDetails.dart';
import 'package:flutter/material.dart';
import '../utils/utils.dart';

class ReusableTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Text(
            ' Scheduled for: 25/12/20',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.withOpacity(0.5),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              trailing: Text(
                '₹200',
                style: TextStyle(fontSize: 15),
              ),
              title: Text('Vatsalya Singh'),
              leading: Icon(
                Icons.done_all,
                color: Colors.green,
              ),
              subtitle: Text(
                'Order id: ' '#345678',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Total Amount Recieved',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '₹150',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, OrderDetails.orderDetailsRoute);
            },
            child: Container(
              decoration: BoxDecoration(
                color: thatButtonColor(),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'View Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
