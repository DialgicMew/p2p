import 'package:fds/src/widgets/appBar.dart';
import '../widgets/textInput.dart';
import 'package:flutter/material.dart';

class ManageProductId extends StatelessWidget {
  static const manageProductIdRoute = 'manageProductId';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF0F1F0),
        appBar: AppBarCustom('Manage Product', context).returnWidget(),
        body: Center(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.vertical,
            children: <Widget>[
              ImageWidget(),
              SwitchClass(),
              TextInput(
                labelText: 'Product Name',
                controller: TextEditingController(
                  text: 'Burger',
                ),
              ),
              TextInput(
                labelText: 'Cost',
                controller: TextEditingController(
                  text: '200',
                ),
              ),
              TextInput(
                labelText: 'Product Description',
                controller: TextEditingController(
                  text:
                      'A loaf of bread with beef in the centre. Cheese is available in the centre!',
                ),
              ),
              DeleteButton(),
            ],
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
            'Delete',
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
            Radius.circular(50),
          ),
        ),
      ),
    );
  }
}
