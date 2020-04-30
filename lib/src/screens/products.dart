import 'package:flutter/material.dart';
import '../widgets/reusableCard.dart';

class Products extends StatelessWidget {
  static const productsRoute = 'Products';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            childAspectRatio: 0.76,
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
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
    );
  }
}
