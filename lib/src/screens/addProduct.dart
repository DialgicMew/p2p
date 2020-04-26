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
        backgroundColor: Color(0xffF0F1F0),
        appBar: AppBarCustom('Add Product', context).returnWidget(),
        body: Center(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.vertical,
            children: <Widget>[
              ImageRect(),
              SwitchClass(),
              TextInput(
                labelText: 'Product Name',
              ),
              TextInput(
                labelText: 'Cost',
              ),
              TextInput(
                labelText: 'Product Description',
              ),
              SaveButton(),
            ],
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

class SaveButton extends StatelessWidget {
  const SaveButton({Key key}) : super(key: key);

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
            'Save',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
      ),
    );
  }
}
