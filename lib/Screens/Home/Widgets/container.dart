import 'package:flutter/material.dart';

class ContainerSp extends StatelessWidget {
  const ContainerSp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      height: 150,
      decoration: BoxDecoration(
          color: Colors.pink[100], borderRadius: BorderRadius.circular(10)),
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
              Text('One Day Package',
                  style: TextStyle(
                      color: Colors.indigo[900],
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              Text('₹ 2799',
                  style: TextStyle(
                      color: Colors.indigo[900],
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Container(
            child: Text(
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam ',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
        )
      ]),
    );
  }
}
