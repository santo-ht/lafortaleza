import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

import '../config/app_config.dart';

//import './home_page.dart';
/* import '../pages/auth_page.dart';

import '../providers/auth_provider.dart'; */
import 'home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
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
            Center(
          child: Image.asset(AppConfig.splashImage),
        ),
      )),
    );
  }
}
