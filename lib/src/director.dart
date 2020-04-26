import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:flutter/material.dart';
import 'screens/products.dart';
import '../extras/my_flutter_app_icons.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import './screens/Receipt.dart';
import './screens/addProduct.dart';
import './screens/account.dart';

//This page is basically what app.dart does in all tutorials.

class Director extends StatelessWidget {
  const Director({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bottom();
    //Very Very important, look how Bottom() has been used here i could have just put contents of Bottom here but
    //it doesn't work that way, shows error becuase inside of materialApp, directly the Navigator is not directly avaiable to
    //the icons in the navBar, hence this architecture.
  }
}

class Bottom extends StatefulWidget {
  Bottom({Key key}) : super(key: key);

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 1;
  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: _selectedIndex == 1
            ? FloatingActionButton.extended(
                label: Text('ADD'),
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.pushNamed(context, AddProduct.addProductRoute);
                },
                backgroundColor: Colors.pink,
              )
            : null,
        body: Container(
          decoration: BoxDecoration(color: Color(0xffF2F5FB)),
          child: Center(
            child: _getPage(_selectedIndex),
          ),
        ),
        //This is a custom navbar, it's called fanceBottomNavigation. Can get documentation.
        //This is stateful widget, it's very linked with _getPage(), _getPage looks at current
        //index and fetches that page into the body of the Scaffold.
        //onTabChangedListener is like onchanged, tabs=the content to be shown in navbar.
        bottomNavigationBar: FancyBottomNavigation(
          textColor: Color(0xffbebebf),
          inactiveIconColor: Color(0xffbebebf),
          circleColor: Colors.amber,
          onTabChangedListener: _onTabTapped,
          initialSelection: 1,
          key: bottomNavigationKey,
          tabs: [
            TabData(
              iconData: OMIcons.receipt,
              title: 'Receipt',
            ),
            TabData(
              iconData: MyFlutterApp.spoon,
              title: 'Products',
            ),
            TabData(
              iconData: EvaIcons.personOutline,
              title: 'Account',
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }

  _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return Receipt();
      case 1:
        return Products();
      case 2:
        return Account();
    }
  }
}
