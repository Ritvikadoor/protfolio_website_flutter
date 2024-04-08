import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPicHeading extends StatelessWidget {
  const MyPicHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(221, 0, 0, 0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Text(
          //   "Ritvik Adoor",
          //   style: TextStyle(color: primaryColor),
          // ),
          Container(
            height: MediaQuery.of(context).size.width / 2,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("text_ritvik.jpg"),
              fit: BoxFit.fill,
            )),
          ),
          // Container(
          //   height: MediaQuery.of(context).size.width / 2,
          //   width: MediaQuery.of(context).size.width / 3,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //     image: AssetImage("me.jpg"),
          //     fit: BoxFit.fill,
          //   )),
          // ),
          Container(
            height: MediaQuery.of(context).size.width / 2,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                  "20240325003852_IMG_7358-Photoroom-removebg-preview.png"),
              fit: BoxFit.fill,
            )),
          ),
        ],
      ),
    );
  }
}
