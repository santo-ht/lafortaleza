import 'package:flutter/material.dart';
import 'package:lafortaleza/config/app_config.dart';

/* import 'package:provider/provider.dart';
import '../../pages/auth_page.dart';

import '../../config/app_strings.dart'; */

class AccountPageWidget extends StatefulWidget {
  const AccountPageWidget({Key? key}) : super(key: key);

  @override
  _AccountPageWidgetState createState() => _AccountPageWidgetState();
}

class _AccountPageWidgetState extends State<AccountPageWidget> {
  @override
  void initState() {
    super.initState();
  }

  /*
  @override
  void didChangeDependencies() {
    if (isInit) {
      setState(() {
        isLoading = true;
      });
      Provider.of<HotelListProvider>(context).fetchSetHotelList().then((_) {
        setState(() {
          isLoading = false;
        });
      }).catchError((error) {
        //print(error);
        showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                title: Text(AppStrings.error),
                content: Text(error.toString()),
                actions: [
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {
                        setState(() {
                          isLoading = false;
                        });
                        Navigator.of(context).pop();
                        if (error.toString() == AppStrings.tokenExpiryMessage) {
                          Navigator.of(context)
                              .pushReplacementNamed(AuthPage.routeName);
                        }
                      },
                      icon: Icon(Icons.close),
                      label: Text(AppStrings.close))
                ],
              );
            });
      });
    }
    super.didChangeDependencies();
    isInit = false; 
  }*/

  @override
  Widget build(BuildContext context) {
    //final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Container(
          height: deviceHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              /* begin: Alignment.topLeft,
              end: Alignment(
                  0.8, 0.0),  */ // 10% of the width, so there are ten blinds.
              colors: [
                const Color(0xffee0096),
                const Color(0xffff365d)
              ], // red to yellow
              tileMode:
                  TileMode.repeated, // repeats the gradient over the canvas
            ),
          ),
          // margin: const EdgeInsets.fromLTRB(20, 5, 10, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Center(
                      child: Image.asset(
                        AppConfig.logoImage,
                        height: 70,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                    child: Icon(
                      Icons.shopping_basket_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
              )
              //SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
