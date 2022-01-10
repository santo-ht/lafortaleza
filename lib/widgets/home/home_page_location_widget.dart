import 'package:flutter/material.dart';

class HomePageLocationWidget extends StatefulWidget {
  @override
  State<HomePageLocationWidget> createState() => _HomePageLocationWidgetState();
}

class _HomePageLocationWidgetState extends State<HomePageLocationWidget> {
  bool loc1 = true, loc2 = false, loc3 = false, loc4 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              loc1 = !loc1;
              loc2 = false;
              loc3 = false;
              loc4 = false;
            });
          },
          child: Card(
            color: loc1 ? Colors.pink : Colors.black12,
            elevation: loc1 ? 20 : 0,
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Carlsdat',
                style: TextStyle(
                  color: loc1 ? Colors.white : Colors.black54,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              loc2 = !loc2;
              loc1 = false;
              loc3 = false;
              loc4 = false;
            });
          },
          child: Card(
            color: loc2 ? Colors.pink : Colors.black12,
            elevation: loc2 ? 20 : 0,
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Clifton',
                style: TextStyle(
                  color: loc2 ? Colors.white : Colors.black54,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              loc3 = !loc3;
              loc2 = false;
              loc1 = false;
              loc4 = false;
            });
          },
          child: Card(
            color: loc3 ? Colors.pink : Colors.black12,
            elevation: loc3 ? 20 : 0,
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Garfield',
                style: TextStyle(
                  color: loc3 ? Colors.white : Colors.black54,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              loc4 = !loc4;
              loc2 = false;
              loc3 = false;
              loc1 = false;
            });
          },
          child: Card(
            color: loc4 ? Colors.pink : Colors.black12,
            elevation: loc4 ? 20 : 0,
            shadowColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Passaic',
                style: TextStyle(
                  color: loc4 ? Colors.white : Colors.black54,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
