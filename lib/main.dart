/*
Restaurant App, United States of America
Copyright (c) 2022, La Fortaleza

Developed by Santhosh, Hridham Tech
https://www.hridhamtech.com
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

//import 'package:provider/provider.dart';

//Pages
import 'pages/order_confirm_page.dart';
import 'pages/splash_page.dart';
import 'pages/home_page.dart';
import 'pages/account_page.dart';
import 'pages/deals_page.dart';
import 'pages/menu_page.dart';
import 'pages/booking_page.dart';

//Providers
import 'providers/menu_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Set Orientations
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  /* // Set Safe Area Color
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    // Colors.white, // Only honored in Android M and above
      statusBarIconBrightness:
        Brightness.dark, // Only honored in Android M and above
    statusBarBrightness: Brightness.light, 
  ));*/

  runApp(const LaFortaleza());
}

class LaFortaleza extends StatefulWidget {
  const LaFortaleza({Key? key}) : super(key: key);

  @override
  _LaFortalezaState createState() => _LaFortalezaState();
}

class _LaFortalezaState extends State<LaFortaleza> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (ctx) => MenuProvider()),
          /*   ChangeNotifierProvider(create: (ctx) => AuthProvider()),
          ChangeNotifierProvider(create: (ctx) => RegisterProvider()),
          ChangeNotifierProvider(create: (ctx) => ProfileProvider()),
          ChangeNotifierProvider(create: (ctx) => LocationProvider()),
          ChangeNotifierProvider(create: (ctx) => GoogleAuthProvider()),
          ChangeNotifierProvider(create: (ctx) => MoreProvider()),
          ChangeNotifierProvider(create: (ctx) => MyHistoryProvider()),
          ChangeNotifierProvider(create: (ctx) => SubscriptionProvider()),
          ChangeNotifierProvider(create: (ctx) => DocumentsProvider()),
          ChangeNotifierProvider(create: (ctx) => QuestionnaireProvider()), */
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const SplashPage(),
          routes: {
            HomePage.routeName: (ctx) => const HomePage(),
            DealsPage.routeName: (ctx) => const DealsPage(),
            MenuPage.routeName: (ctx) => const MenuPage(),
            AccountPage.routeName: (ctx) => const AccountPage(),
            BookingPage.routeName: (ctx) => const BookingPage(),
            OrderConfirmPage.routeName: (ctx) => const OrderConfirmPage(),
          },
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              // Set backwardsCompatibility to false
              // to tell the system that we are going to use systemOverlayStyle not brightness

              // Use systemOverlayStyle to control status bar text color.
              systemOverlayStyle: SystemUiOverlayStyle.dark,
              // SystemUiOverlayStyle.dark means System overlays text should be drawn with a dark color.
              // Intended for applications with a light background.

              // SystemUiOverlayStyle.light means System overlays text should be drawn with a light color.
              // Intended for applications with a dark background.
            ),
            fontFamily: 'ProximaNova',
            primaryTextTheme: const TextTheme(
              headline1: TextStyle(fontSize: 14),
            ),
          ),
        ));
  }
}
