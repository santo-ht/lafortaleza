import 'package:flutter/material.dart';
import 'package:lafortaleza/pages/order_confirm_page.dart';
//import '/config/app_config.dart';
import '/config/app_strings.dart';
import '/models/menu_model.dart';

/* import 'package:provider/provider.dart';
import '../../pages/auth_page.dart';

import '../../config/app_strings.dart'; */

class BookingPageWidget extends StatefulWidget {
  final menuGroupList, cartQuantity, cartAmount;
  const BookingPageWidget(
      this.menuGroupList, this.cartQuantity, this.cartAmount,
      {Key? key})
      : super(key: key);

  @override
  _BookingPageWidgetState createState() => _BookingPageWidgetState();
}

class _BookingPageWidgetState extends State<BookingPageWidget> {
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
    //if (isInit) {
    menuGroupList = widget.menuGroupList;
    cartQuantity = widget.cartQuantity;
    cartAmount = widget.cartAmount;
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: menuGroupList.length,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      decoration: BoxDecoration(
                          //color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white24,
                          )),
                      // padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: menuGroupList[index].menuList.length,
                          itemBuilder: (context, menuIndex) {
                            return menuGroupList[index]
                                        .menuList[menuIndex]
                                        .orderQuantity >
                                    0
                                ? Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 5),
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
                                                    onPressed: () => minusMenu(
                                                        index, menuIndex),
                                                  ),
                                                  Container(
                                                    //width: 4,
                                                    child: Text(
                                                        menuGroupList[index]
                                                            .menuList[menuIndex]
                                                            .orderQuantity
                                                            .toString()),
                                                  ),
                                                  IconButton(
                                                      icon: Icon(Icons
                                                          .add_circle_outline),
                                                      onPressed: () => addMenu(
                                                          index, menuIndex)),
                                                ],
                                              )
                                            : Text(AppStrings.soldOut,
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                      ],
                                    ),
                                  )
                                : Container();
                          }));
                }),
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
                      menuGroupList.clear();
                      Navigator.of(context)
                          .pushReplacementNamed(OrderConfirmPage.routeName);
                    },
                    child: Text(
                      'Make Payment',
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
