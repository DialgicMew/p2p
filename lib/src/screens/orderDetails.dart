import 'package:flutter/material.dart';
import '../widgets/appBar.dart';
import '../widgets/OrderDetailTile.dart';

class OrderDetails extends StatelessWidget {
  static const orderDetailsRoute = 'OrderDetails';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF2F5FB),
        appBar: AppBarCustom('Order Details', context).returnWidget(),
        body: Center(
          child: Container(
            child: ListView(
              children: <Widget>[
                Column(
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
                        fontSize: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 40
                            : 60,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Text(
                      '1099',
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 20
                            : 30,
                      ),
                    ),
                  ],
                ),
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
                Divider(
                  color: Colors.blueGrey,
                ),
                Container(
                  padding: MediaQuery.of(context).orientation ==
                          Orientation.portrait
                      ? EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.03)
                      : EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Total:',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? 25
                              : 50,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff283060),
                        ),
                      ),
                      Text(
                        '₹80',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? 25
                              : 50,
                          fontWeight: FontWeight.w900,
                          color: Color(0xff283060),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            margin: MediaQuery.of(context).orientation == Orientation.portrait
                ? EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.02)
                : EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.05),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? MediaQuery.of(context).size.height * 0.02
                      : MediaQuery.of(context).size.height * 0.05,
            ),
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xffcfd8dc),
                  offset: Offset(0, 0),
                  blurRadius: 8,
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
