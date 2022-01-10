import 'package:flutter/material.dart';
import '/widgets/home_page_widget.dart';
import '/widgets/bottom_navbar_widget.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/homePage';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isInit = true;
  var isLoading = false;

  /*  @override
  void didChangeDependencies() {
    if (isInit) {
      setState(() {
        isLoading = true;
      });
      Provider.of<ProfileProvider>(context).fetchSetProfile().then((_) {
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
        setState(() {
          isLoading = false;
        });
      });
    }
    super.didChangeDependencies();
    isInit = false;
  } */

  @override
  Widget build(BuildContext context) {
    return (SafeArea(
        bottom: true,
        child: Scaffold(
          //extendBody: true,
          //backgroundColor: const Color(AppConfig.appBgColor),
          body:
              /* isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : */
              HomePageWidget(),
          bottomNavigationBar: BottomNavBarWidget(0),
        )));
  }
}
