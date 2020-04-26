import 'package:fds/src/widgets/appBar.dart';
import 'package:flutter/material.dart';

class ManageProductId extends StatelessWidget {
  static const manageProductIdRoute = 'manageProductId';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarCustom('Manage Product', context).returnWidget(),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: Color(0xffF2F5FB),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                ImageWidget(),
                SwitchClass(),
                TextWithController(
                  'Product Name',
                  TextEditingController(
                    text: 'Burger',
                  ),
                ),
                TextWithController(
                  'Cost',
                  TextEditingController(
                    text: '200',
                  ),
                ),
                TextWithController(
                  'Product Description',
                  TextEditingController(
                    text:
                        'A loaf of bread with beef in the centre. Cheese is available in the centre!',
                  ),
                ),
                DeleteButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          child: Image.asset(
            'assets/images1.jpg',
            fit: BoxFit.cover,
          ),
        ),
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.01),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          color: Colors.teal,
        ),
      ),
    );
  }
}

class TextWithController extends StatelessWidget {
  const TextWithController(this.labelText, this.controller);
  final String labelText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.015),
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: null,
        controller: controller,
        style: TextStyle(
          color: Color(0xff283060),
          fontSize: 20,
        ),
        decoration: new InputDecoration(
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(width: 1, color: Colors.transparent),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(width: 1, color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(width: 1, color: Colors.transparent),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(
              width: 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(width: 1, color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(width: 1, color: Colors.red),
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xffcfd8dc),
            offset: Offset(0, 0),
            blurRadius: 5,
          )
        ],
      ),
    );
  }
}

class SwitchClass extends StatefulWidget {
  @override
  _SwitchClassState createState() => _SwitchClassState();
}

class _SwitchClassState extends State<SwitchClass> {
  bool _isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              _isSwitched == true ? 'In-stock' : 'Out-of-stock',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            Switch.adaptive(
              activeColor: Colors.green,
              value: _isSwitched,
              onChanged: (value) {
                setState(
                  () {
                    _isSwitched = !_isSwitched;
                  },
                );
              },
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}

class DeleteButton extends StatelessWidget {
  const DeleteButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.015),
        height: 50,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'delete',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
