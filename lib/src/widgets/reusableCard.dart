import 'package:flutter/material.dart';
import '../screens/manageProductId.dart';

class ReusableCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ManageProductId.manageProductIdRoute);
      },
      child: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ImageWidget('assets/images.jpg'),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextWidget('Burger'),
                    SubText('₹' + '200'),
                    SubText('In-Stock'),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(40)),
                ),
              ),
            )
          ],
        ),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
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
      textAlign: TextAlign.center,
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
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xff283060),
        fontWeight: FontWeight.w500,
        fontSize: 25,
      ),
    );
  }
}
