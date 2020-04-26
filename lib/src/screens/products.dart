import 'package:flutter/material.dart';
import '../widgets/reusableCard.dart';

class Products extends StatelessWidget {
  const Products({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color(0xffF2F5FB),
        child: OrientationBuilder(
          builder: (context, orientation) {
            return GridView.count(
              childAspectRatio: 0.76,
              crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              children: <Widget>[
                ReusableCard(),
                ReusableCard(),
                ReusableCard(),
                ReusableCard(),
                ReusableCard(),
                ReusableCard(),
              ],
            );
          },
        ),
      ),
    );
  }
}
