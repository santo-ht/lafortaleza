import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

import '../config/app_config.dart';

//import './home_page.dart';
/* import '../pages/auth_page.dart';

import '../providers/auth_provider.dart'; */
import 'home_page.dart';

class OrderConfirmPage extends StatefulWidget {
  static const routeName = '/orderConfirmPage';
  const OrderConfirmPage({Key? key}) : super(key: key);

  @override
  _OrderConfirmPageState createState() => _OrderConfirmPageState();
}

class _OrderConfirmPageState extends State<OrderConfirmPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(HomePage.routeName);
      //Navigator.of(context).pushReplacementNamed(AuthPage.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (Scaffold(
        body:
            /* FutureBuilder(
              future: AuthProvider().autoLogin(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  //print(snapshot.data);
                  return snapshot.hasData ? HomePage() : AuthPage();
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return Scaffold(
                      backgroundColor: Colors.white,
                      body: Center(child: Image.asset(AppConfig.splashImage)
                          //child: Image.asset(AppConfig.logoImage),
                          ));
                } else {
                  return AuthPage();
                }
              }) */
            Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Order Confirmed !',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.pink,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                AppConfig.orderConfirmImage,
                width: 300,
                height: 120,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
