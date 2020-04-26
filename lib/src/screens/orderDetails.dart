import 'package:flutter/material.dart';
import '../widgets/appBar.dart';
import '../widgets/OrderDetailTile.dart';

class OrderDetails extends StatelessWidget {
  static const orderDetailsRoute = 'OrderDetails';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF0F1F0),
        appBar: AppBarCustom('Order Details', context).returnWidget(),
        body: Stack(
          children: <Widget>[
            ListView(
              padding:
                  EdgeInsets.only(top: 10, bottom: 300, left: 10, right: 10),
              children: <Widget>[
                Details(),
                CustomListItem(
                    title: 'Burger',
                    qty: 2,
                    thumbnail: 'assets/images.jpg',
                    price: 20),
                CustomListItem(
                  title: 'Pizza',
                  qty: 2,
                  thumbnail: 'assets/images1.jpg',
                  price: 20,
                ),
                CustomListItem(
                  title: 'Chilli Chicken',
                  qty: 2,
                  thumbnail: 'assets/images2.jpg',
                  price: 20,
                ),
                CustomListItem(
                  title: 'Hot Dog',
                  qty: 2,
                  thumbnail: 'assets/images3.jpg',
                  price: 20,
                ),
              ],
            ),
            BottomFixed(),
          ],
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '#100007568',
                style: TextStyle(
                  color: Color(0xff37474f),
                  fontSize: 25,
                ),
              ),
              Text(
                '12/08/20',
                style: TextStyle(
                  color: Color(0xff37474f),
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Divider(
            color: Color(0xffe0e0e0),
          ),
          Text(
            'Vatsalya Singh',
            maxLines: 3,
            style: TextStyle(
              color: Color(0xff37474f),
              fontSize:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? 40
                      : 60,
              fontWeight: FontWeight.w200,
            ),
          ),
          Text(
            '1099',
            style: TextStyle(
              color: Colors.black38,
              fontSize:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? 20
                      : 30,
            ),
          ),
        ],
      ),
      margin: MediaQuery.of(context).orientation == Orientation.portrait
          ? EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01)
          : EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.05),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: MediaQuery.of(context).orientation == Orientation.portrait
            ? MediaQuery.of(context).size.height * 0.02
            : MediaQuery.of(context).size.height * 0.05,
      ),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }
}

class BottomFixed extends StatelessWidget {
  const BottomFixed({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(1, 0),
                blurRadius: 3,
                color: Color(0xffe0e0e0),
              )
            ],
          ),
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1,
            vertical: MediaQuery.of(context).size.height * 0.02,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'TOTAL:',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff37474f)),
              ),
              Text(
                '₹80',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff37474f)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
