import 'package:fds/src/screens/payment.dart';
import 'package:fds/src/widgets/ImageRect.dart';
import 'package:fds/src/widgets/appBar.dart';
import 'package:fds/src/widgets/textInput.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  static const addProductRoute = 'AddProduct';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarCustom('Add Product', context).returnWidget(),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: Color(0xffF2F5FB),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                ImageRect(),
                SwitchClass(),
                TextInput(
                  'Product Name',
                ),
                TextInput(
                  'Cost',
                ),
                TextInput(
                  'Product Description',
                ),
                SaveButton(),
              ],
            ),
          ),
        ),
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
