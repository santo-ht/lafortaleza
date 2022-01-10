import 'package:flutter/material.dart';
import '/config/app_config.dart';
import '/pages/deals_page.dart';
import '/pages/menu_page.dart';

import 'home/home_page_amenities_widget.dart';
import 'home/home_page_location_widget.dart';

/* import 'package:provider/provider.dart';
import '../../pages/auth_page.dart';

import '../../config/app_strings.dart'; */

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
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
    final deviceWidth = MediaQuery.of(context).size.width;
    //final deviceHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Container(
          // height: deviceHeight,
          color: Colors.grey[100],
          /* decoration: BoxDecoration(
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
          ), */
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
                      color: Colors.pink,
                      size: 30,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(
                    'Visit, Order Online or Call Us! Dine In, Delivery & Pickup at Any of Our Locations ',
                    //'Select Location',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              SizedBox(height: 10),
              HomePageLocationWidget(),
              SizedBox(height: 10),
              Center(
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      AppConfig.splashImage,
                      width: deviceWidth * .6,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context)
                        .pushReplacementNamed(DealsPage.routeName),
                    child: Card(
                      elevation: 10,
                      child: Container(
                        height: 90,
                        width: deviceWidth * .4,
                        decoration: BoxDecoration(
                            //border: Border.all(color: Colors.pinkAccent),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.redeem,
                              size: 40,
                              color: Colors.pink,
                            ),
                            Text(
                              'Deals',
                              style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Click Here >',
                              style: TextStyle(
                                color: Colors.pink,
                                fontSize: 9,
                              ),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context)
                        .pushReplacementNamed(MenuPage.routeName),
                    child: Card(
                      elevation: 10,
                      child: Container(
                        height: 90,
                        width: deviceWidth * .4,
                        decoration: BoxDecoration(
                            //border: Border.all(color: Colors.pinkAccent),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.fastfood,
                              size: 40,
                              color: Colors.pink,
                            ),
                            Text(
                              'Menu',
                              style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Click Here >',
                              style: TextStyle(
                                color: Colors.pink,
                                fontSize: 9,
                              ),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Center(
                    child: Text(
                      'Enjoy the wide range of amenities we offer !!',
                      //'Select Location',

                      style: TextStyle(
                        color: Colors.pink,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
              HomePageAmenitiesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
