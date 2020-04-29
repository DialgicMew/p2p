import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    this.thumbnail,
    this.title,
    this.qty,
    this.price,
  });

  final String thumbnail;
  final String title;
  final int qty;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        trailing: Text(
          '₹' + price.toString(),
          style: TextStyle(fontSize: 20),
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
        subtitle: Text(
          'Qty: ' + qty.toString(),
          style: TextStyle(fontSize: 15),
        ),
        leading: AspectRatio(
          aspectRatio: 2,
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                thumbnail,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
