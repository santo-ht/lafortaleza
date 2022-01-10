import 'package:flutter/material.dart';
import '/widgets/booking_page_widget.dart';
import '/widgets/bottom_navbar_widget.dart';
//import 'package:provider/provider.dart';

class BookingPage extends StatefulWidget {
  static const routeName = '/bookingPage';

  const BookingPage({Key? key}) : super(key: key);

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
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
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final menuGroupList = args['menuGroupList'];

    final cartQuantity = args['cartQuantity'];
    final cartAmount = args['cartAmount'];

    return (SafeArea(
        bottom: true,
        child: Scaffold(
          //extendBody: true,
          //backgroundColor: const Color(AppConfig.blueColor),
          appBar: AppBar(
            backgroundColor: Colors.pink,
            title: Text('Order Summary'),
          ),
          body:
              /* isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : */
              BookingPageWidget(menuGroupList, cartQuantity, cartAmount),
          bottomNavigationBar: BottomNavBarWidget(2),
        )));
  }
}
