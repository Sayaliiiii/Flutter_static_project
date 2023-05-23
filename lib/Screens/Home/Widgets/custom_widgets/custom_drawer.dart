import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrawerList extends StatelessWidget {
  DrawerList({Key? key}) : super(key: key);
  final List<String> drawerList = [
    'Home',
    'Book A Nanny',
    'How It Works',
    'Why Nanny Vanny',
    'My Bookings',
    'My Profile',
    'Support',
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.all(25), children: [
      DrawerHeader(
        padding: EdgeInsets.only(top: 10.49),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image(
              image: AssetImage(
                'images/image 1.png',
              ),
              height: 72.0,
              width: 72.0,
            ),
            Text(
              'Emily Cyrus',
              style: TextStyle(
                  fontSize: 20.5,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      Container(
        height: 400,
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  leading: Text(
                drawerList[index],
                style: TextStyle(
                    color: Color(0xff124a77),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ));
            },
            itemCount: drawerList.length,
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                height: 25,
                color: Colors.pink,
                thickness: 0.2,
              );
            }),
      )
    ]));
  }
}
