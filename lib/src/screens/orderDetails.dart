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
              padding: EdgeInsets.only(bottom: 100),
              children: <Widget>[
                Details(),
                ListView(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  children: <Widget>[
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
                )
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
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Text(
                '12/08/20',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w100,
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
              color: Colors.black,
              fontSize:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? 30
                      : 50,
              fontWeight: FontWeight.w200,
            ),
          ),
          Text(
            '1099',
            style: TextStyle(
              fontWeight: FontWeight.w100,
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
          ? EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01)
          : EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.05),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
        vertical: MediaQuery.of(context).orientation == Orientation.portrait
            ? MediaQuery.of(context).size.height * 0.02
            : MediaQuery.of(context).size.height * 0.05,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
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
            color: Colors.grey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
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
            vertical: MediaQuery.of(context).size.height * 0.03,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'TOTAL:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                ),
              ),
              Text(
                '₹80',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
