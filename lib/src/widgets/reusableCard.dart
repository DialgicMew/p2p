import 'package:flutter/material.dart';
import '../screens/manageProductId.dart';

class ReusableCard extends StatelessWidget {
  final colour = Colors.white;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ManageProductId.manageProductIdRoute);
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: ImageWidget('assets/images.jpg'),
              flex: 4,
              fit: FlexFit.tight,
            ),
            SizedBox(height: 10, width: double.infinity),
            Flexible(
              child: TextWidget('Burger'),
              flex: 1,
            ),
            SizedBox(height: 10, width: double.infinity),
            Flexible(
              child: SubText('₹200'),
              flex: 1,
            ),
            SizedBox(height: 10, width: double.infinity),
            Flexible(
              child: SubText('In-Stock'),
              flex: 1,
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Color(0xffcfd8dc),
              offset: Offset(0, 0),
              blurRadius: 8,
            )
          ],
        ),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  ImageWidget(this.imageLink);
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        child: Image.asset(
          imageLink,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
    );
  }
}

class SubText extends StatelessWidget {
  SubText(this.displayContent);
  final String displayContent;

  @override
  Widget build(BuildContext context) {
    return Text(
      displayContent,
      style: TextStyle(
        color: Color(0xff283060),
        fontWeight: FontWeight.w300,
        fontSize: 20,
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  TextWidget(this.content);
  final String content;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
        color: Color(0xff283060),
        fontWeight: FontWeight.w500,
        fontSize: 25,
      ),
    );
  }
}
