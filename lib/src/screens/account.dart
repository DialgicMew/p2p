import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import '../widgets/accountTile.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: ClipOval(
                  child: Image.asset(
                    'assets/profile1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.13,
                    bottom: MediaQuery.of(context).size.height * 0.03),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),
              ),
              Text(
                'Vatsalya Singh',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: <Widget>[
                AccountTile(
                  icon: OMIcons.permIdentity,
                  text: 'Profile',
                ),
                AccountTile(
                  icon: EvaIcons.homeOutline,
                  text: 'Address',
                ),
                AccountTile(
                  icon: EvaIcons.creditCardOutline,
                  text: 'Payment',
                ),
                AccountTile(
                  icon: EvaIcons.settingsOutline,
                  text: 'Settings',
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
