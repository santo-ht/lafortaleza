import 'package:flutter/material.dart';
import '/pages/booking_page.dart';
import '/config/app_config.dart';
import '/config/app_strings.dart';
import '/models/menu_model.dart';
import '/providers/menu_provider.dart';
import 'package:provider/provider.dart';

/* import 'package:provider/provider.dart';
import '../../pages/auth_page.dart';

import '../../config/app_strings.dart'; */

class MenuPageWidget extends StatefulWidget {
  const MenuPageWidget({Key? key}) : super(key: key);

  @override
  _MenuPageWidgetState createState() => _MenuPageWidgetState();
}

class _MenuPageWidgetState extends State<MenuPageWidget> {
  @override
  void initState() {
    super.initState();
  }

  bool isInit = true;

  List<MenuModel> menuGroupList = [];

  int cartQuantity = 0;
  double cartAmount = 0;

  //dynamic menuList = [0, 0, 0, 0];

  @override
  void didChangeDependencies() {
    // if (isInit) {
    if (menuGroupList.length > 0) {
      menuGroupList.clear();
    }
    menuGroupList = Provider.of<MenuProvider>(context).fetchMenuList;
    /*  setState(() {
        isLoading = true;
      });
      Provider.of<HotelListProvider>(context).fetchSetHotelList().then((_) {
        setState(() {
          isLoading = false;
        }); */

    /* }).catchError((error) {
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
      }); */
    //}
    super.didChangeDependencies();
    isInit = false;
  }

  void addMenu(int groupIndex, int menuIndex) {
    setState(() {
      // overrideVal = true;
      //menuGroupList[roomIndex].isAddClicked = false;
      menuGroupList[groupIndex].menuList[menuIndex].orderQuantity =
          menuGroupList[groupIndex].menuList[menuIndex].orderQuantity + 1;
      cartQuantity = cartQuantity + 1;
      cartAmount =
          cartAmount + menuGroupList[groupIndex].menuList[menuIndex].price;
    });
  }

  void minusMenu(int groupIndex, int menuIndex) {
    setState(() {
      if (menuGroupList[groupIndex].menuList[menuIndex].orderQuantity > 0) {
        /* overrideVal = true;
        _roomDetails[roomIndex].isAddClicked = false; */
        menuGroupList[groupIndex].menuList[menuIndex].orderQuantity =
            menuGroupList[groupIndex].menuList[menuIndex].orderQuantity - 1;
        cartQuantity = cartQuantity - 1;
        cartAmount =
            cartAmount - menuGroupList[groupIndex].menuList[menuIndex].price;
      }
      // check this condition and logic
    });
  }

  @override
  Widget build(BuildContext context) {
    //final deviceWidth = MediaQuery.of(context).size.width;
    //final deviceHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Container(
        //height: deviceHeight * .9,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
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
                    /* Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                        child: Icon(
                          Icons.shopping_basket_outlined,
                          color: Colors.pink,
                          size: 30,
                        ),
                      ) */
                  ],
                ),
                Container(
                  height: 40,
                  margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    //border: Border.all(color: Colors.pink),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search Menu',
                        style: TextStyle(
                          color: Colors.pink,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.pink,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: menuGroupList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                        decoration: BoxDecoration(
                            //color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white24,
                            )),
                        // padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Theme(
                          data: Theme.of(context)
                              .copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                              initiallyExpanded: true,
                              backgroundColor: Colors.white,
                              collapsedBackgroundColor: Colors.white,
                              iconColor: Colors.pink,
                              collapsedIconColor: Colors.pink,
                              tilePadding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                              title: Text(
                                menuGroupList[index].menuGroupName,
                                style: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              children: [
                                ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount:
                                        menuGroupList[index].menuList.length,
                                    itemBuilder: (context, menuIndex) {
                                      return Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 0, 10, 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  menuGroupList[index]
                                                      .menuList[menuIndex]
                                                      .menuName,
                                                  style: TextStyle(
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                                Text(
                                                  '\$ ${menuGroupList[index].menuList[menuIndex].price}',
                                                  style: TextStyle(
                                                    color: Colors.pink,
                                                  ),
                                                )
                                              ],
                                            ),
                                            menuGroupList[index]
                                                        .menuList[menuIndex]
                                                        .quantity >
                                                    0
                                                ? Row(
                                                    children: [
                                                      IconButton(
                                                        icon: Icon(Icons
                                                            .remove_circle_outline),
                                                        onPressed: () =>
                                                            minusMenu(index,
                                                                menuIndex),
                                                      ),
                                                      Container(
                                                        //width: 4,
                                                        child: Text(
                                                            menuGroupList[index]
                                                                .menuList[
                                                                    menuIndex]
                                                                .orderQuantity
                                                                .toString()),
                                                      ),
                                                      IconButton(
                                                          icon: Icon(Icons
                                                              .add_circle_outline),
                                                          onPressed: () =>
                                                              addMenu(index,
                                                                  menuIndex)),
                                                    ],
                                                  )
                                                : Text(AppStrings.soldOut,
                                                    style: TextStyle(
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                          ],
                                        ),
                                      );
                                    }),
                              ]),
                        ),
                      );
                    }),
              ],
            ),
            Container(
              height: 40,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$cartQuantity Items | \$ $cartAmount',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(BookingPage.routeName, arguments: {
                        "menuGroupList": menuGroupList,
                        "cartQuantity": cartQuantity,
                        "cartAmount": cartAmount,
                      });
                    },
                    child: Text(
                      'Place Order',
                      style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.pink,
                //border: Border.all(),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
