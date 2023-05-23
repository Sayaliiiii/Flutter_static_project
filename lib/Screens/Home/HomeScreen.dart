// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/Screens/Home/Widgets/container.dart';
import 'package:helloworld/Screens/Home/Widgets/custom_widgets/card.dart';
import 'package:helloworld/Screens/Home/Widgets/custom_widgets/custom_bottombar.dart';
import 'package:helloworld/Screens/Home/Widgets/custom_widgets/custom_drawer.dart';

class HomeS extends StatefulWidget {
  const HomeS({Key? key}) : super(key: key);
  _HomeSState createState() => _HomeSState();
}

class _HomeSState extends State<HomeS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.pink),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(30),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                new Image.asset('images/image 1.png'),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Column(
                    children: [
                      Text(
                        'Welcome ',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Emily Cyrus',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.pink,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              height: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(8)),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                      bottom: -30,
                      right: -30,
                      child: Image.asset(
                        'images/nanny.png',
                        height: 225,
                      )),
                  Positioned(
                      top: 40,
                      left: 25,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nanny And\nBabySitting Services',
                            style: TextStyle(
                                color: Color.fromRGBO(38, 47, 113, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Book Now',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                              backgroundColor: Color(0xff0a3a61),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: Text(
                      'Your Current Booking',
                      style: TextStyle(
                          color: Colors.indigo[900],
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    height: 250,
                    child: Card(
                        elevation: 10,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'One Day Package',
                                        style: TextStyle(
                                            color: Colors.pink, fontSize: 20),
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Start',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          style: TextButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        18.0)),
                                            backgroundColor: Colors.pink,
                                          )),
                                    ]),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('From'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.calendar_month_outlined,
                                              color: Color.fromRGBO(
                                                  227, 109, 166, 1),
                                            ),
                                            Text('12.08.2020',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        92, 92, 92, 1))),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.access_time_rounded,
                                              color: Color.fromRGBO(
                                                  227, 109, 166, 1),
                                            ),
                                            SizedBox(width: 5),
                                            Text('11 pm',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        92, 92, 92, 1))),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                   Flexible(
                                      child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                  )),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('To'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.calendar_month_outlined,
                                              color: Color.fromRGBO(
                                                  227, 109, 166, 1),
                                            ),
                                            Text('13.08.2020',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        92, 92, 92, 1))),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.access_time_rounded,
                                              color: Color.fromRGBO(
                                                  227, 109, 166, 1),
                                            ),
                                            SizedBox(width: 5),
                                            Text('07 am',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        92, 92, 92, 1))),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Rate Us',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0)),
                                        backgroundColor: Colors.indigo[900],
                                      )),
                                  TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Geolocation',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0)),
                                        backgroundColor: Colors.indigo[900],
                                      )),
                                  TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Survillence',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                        ],
                                      ),
                                      style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0)),
                                        backgroundColor: Colors.indigo[900],
                                      )),
                                ],
                              )
                            ])),
                  ),
                ])),
            SizedBox(
              height: 15,
            ),
            Container(
                margin: EdgeInsets.only(left: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Packages',
                            style: TextStyle(
                                color: Colors.indigo[900],
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ])),
            SizedBox(
              height: 20,
            ),
            ContainerSp(),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(10)),
              child: ListView(children: [
                ListTile(
                  leading: Icon(Icons.calendar_today, color: Colors.white),
                  trailing: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Book Now',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                      backgroundColor: Color(0xff0a3a61),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Three Days Package',
                          style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Text('₹ 7497',
                          style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  child: Container(
                    child: Text(
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam ',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                )
              ]),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(10)),
              child: ListView(children: [
                ListTile(
                  leading: Icon(Icons.calendar_today, color: Colors.pink),
                  trailing: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Book Now',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Five Days Package',
                          style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Text('₹ 11495',
                          style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  child: Container(
                    child: Text(
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam ',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  ),
                )
              ]),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(10)),
              child: ListView(children: [
                ListTile(
                  leading: Icon(Icons.calendar_today, color: Colors.white),
                  trailing: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Book Now',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                      backgroundColor: Colors.indigo[900],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Weekend Package',
                          style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      Text('₹ 7497',
                          style: TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  child: Container(
                    child: Text(
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam ',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                )
              ]),
            )
          ]),
        ),
        drawer: DrawerList(),

        // DrawerList();

        bottomNavigationBar: BottomBar());
  }
}
