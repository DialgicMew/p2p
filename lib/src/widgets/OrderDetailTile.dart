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
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.015),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: AspectRatio(
              aspectRatio:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? 1.5
                      : 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.blue,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: _VideoDescription(
              title: title,
              qty: qty,
              price: price,
            ),
          ),
        ],
      ),
    );
  }
}

class _VideoDescription extends StatelessWidget {
  const _VideoDescription({
    this.title,
    this.qty,
    this.price,
  });

  final String title;
  final int qty;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MediaQuery.of(context).orientation == Orientation.portrait
          ? EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01,
              horizontal: MediaQuery.of(context).size.width * 0.03)
          : EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.03,
              horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title.length > 10 ? title.substring(0, 13) : title,
                style: TextStyle(
                  color: Color(0xff37474f),
                  fontWeight: FontWeight.w500,
                  fontSize:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? 20
                          : 30,
                ),
              ),
              Text(
                '₹$price',
                style: TextStyle(
                  fontSize:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? 20
                          : 25,
                  color: Color(0xff37474f),
                ),
              )
            ],
          ),
          Text(
            'Qty: $qty',
            style: TextStyle(
              color: Color(0xff37474f),
              fontSize:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? 15
                      : 20,
            ),
          ),
        ],
      ),
    );
  }
}
