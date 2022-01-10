import 'package:flutter/material.dart';
import '/pages/account_page.dart';
import '/pages/deals_page.dart';
import '/pages/menu_page.dart';
// ignore: import_of_legacy_library_into_null_safe
//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../config/app_strings.dart';
import '../config/app_config.dart';

import '../pages/home_page.dart';

class BottomNavBarWidget extends StatefulWidget {
  final int _loadIndex;
  const BottomNavBarWidget(this._loadIndex, {Key? key}) : super(key: key);
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget._loadIndex;
  }

  @override
  Widget build(BuildContext context) {
    void _tabPress(int position) {
      if (position == 0) {
        Navigator.of(context).pushReplacementNamed(HomePage.routeName);
      } else if (position == 1) {
        Navigator.of(context).pushReplacementNamed(DealsPage.routeName);
      } else if (position == 2) {
        Navigator.of(context).pushReplacementNamed(MenuPage.routeName);
      } else if (position == 3) {
        Navigator.of(context).pushReplacementNamed(AccountPage.routeName);
      }
    }

    return ClipRRect(
        /*  borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ), */
        child: Container(
      //color: Colors.grey,
      // height: 70,
      //padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
      //color: const Color(AppConfig.bottomNavBGColor),
      child:
          /* Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => _tabPress(0),
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      color: _selectedIndex == 0
                          ? const Color(AppConfig.bottomNavSelectColor)
                          : Colors.grey,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          AppStrings.home,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: _selectedIndex == 0
                                ? const Color(AppConfig.bottomNavSelectColor)
                                : Colors.grey,
                            // Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => _tabPress(1),
                behavior: HitTestBehavior.opaque,
                child: Column(
                  children: [
                    Icon(
                      Icons.medical_services,
                      color: _selectedIndex == 1
                          ? const Color(AppConfig.bottomNavSelectColor)
                          : Colors.grey,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          AppStrings.medicalQuestionnaire,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: _selectedIndex == 1
                                ? const Color(AppConfig.bottomNavSelectColor)
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => _tabPress(2),
                behavior: HitTestBehavior.opaque,
                child: Column(
                  children: [
                    Icon(
                      Icons.file_copy,
                      color: _selectedIndex == 2
                          ? const Color(AppConfig.bottomNavSelectColor)
                          : Colors.grey,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          AppStrings.documentWallet,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: _selectedIndex == 2
                                  ? const Color(AppConfig.bottomNavSelectColor)
                                  : Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => _tabPress(3),
                behavior: HitTestBehavior.opaque,
                child: Column(
                  children: [
                    Icon(
                      Icons.history,
                      color: _selectedIndex == 3
                          ? const Color(AppConfig.bottomNavSelectColor)
                          : Colors.grey,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          AppStrings.myHistory,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: _selectedIndex == 3
                                ? const Color(AppConfig.bottomNavSelectColor)
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        )*/
          BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // backgroundColor: const Color(AppConfig.bottomNavBGColor),
        //Colors.white,
        selectedItemColor: const Color(AppConfig.bottomNavSelectColor),
        selectedLabelStyle: const TextStyle(
          color: Color(AppConfig.blueColor),
        ),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: (indexVal) => _tabPress(indexVal),
        selectedFontSize: 12,
        unselectedFontSize: 10,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: AppStrings.home,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              //MdiIcons.briefcaseVariantOutline,
              Icons.redeem,
              //star_rate,
            ),
            label: AppStrings.deals,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              //MdiIcons.heartOutline,
              Icons.fastfood,
            ),
            label: AppStrings.menu,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people_outline,
            ),
            label: AppStrings.account,
          ),
        ],
      ),
      //])
    ));
    // : BottomAppBar());
  }
}
