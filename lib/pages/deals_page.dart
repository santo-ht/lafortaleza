import 'package:flutter/material.dart';
import '/widgets/deals_page_widget.dart';
import '/widgets/bottom_navbar_widget.dart';

class DealsPage extends StatefulWidget {
  static const routeName = '/dealsPage';

  const DealsPage({Key? key}) : super(key: key);

  @override
  _DealsPageState createState() => _DealsPageState();
}

class _DealsPageState extends State<DealsPage> {
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
          //backgroundColor: const Color(AppConfig.blueColor),
          body:
              /* isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : */
              DealsPageWidget(),
          bottomNavigationBar: BottomNavBarWidget(1),
        )));
  }
}
