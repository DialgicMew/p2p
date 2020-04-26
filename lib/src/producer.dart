import 'package:fds/src/screens/addProduct.dart';
import 'package:flutter/material.dart';
import 'director.dart';
import './screens/profile.dart';
import './screens/address.dart';
import './screens/payment.dart';
import './screens/settings.dart';
import './screens/manageProductId.dart';
import './screens/error.dart';
import './screens/orderDetails.dart';
//This file is made for routing purposes. This file sends us to to Director at first, Director is the page where
//a scaffold is present and inside the scaffold there is a bottom navigator according to which the body of the
//scaffold is decided.

class Producer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'varela',
      ),
      title: 'Producer',
      onGenerateRoute: routes,
    );
  }

  Route routes(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) {
        switch (settings.name) {
          case '/':
            {
              return Director();
            }
          case Profile.profileRoute:
            {
              return Profile();
            }
          case Address.addressRoute:
            {
              return Address();
            }
          case Payment.paymentRoute:
            {
              return Payment();
            }
          case Settings.settingsRoute:
            {
              return Settings();
            }
          case ManageProductId.manageProductIdRoute:
            {
              return ManageProductId();
            }
          case AddProduct.addProductRoute:
            {
              return AddProduct();
            }
          case OrderDetails.orderDetailsRoute:
            {
              return OrderDetails();
            }
          default:
            {
              return Error();
            }
        }
      },
    );
  }
}
