import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListComponent extends StatelessWidget {
  String title = "abc";
  String url = "abc";
  int leftc = 0xffFF9933;
  int rightc = 0xffFF9933;

  ListComponent({
    Key? key,
    this.title = "abc",
    this.url = "assets/bio.jpg",
    this.leftc = 0xffFF9933,
    this.rightc = 0xffFF9933,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 30, right: 30),
      constraints: const BoxConstraints.expand(height: 110, width: 400),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(leftc),
            Color(rightc),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 4,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 27,
                  ),
                ),
                const Text(
                  "Study nature, love nature, stay\nnature",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: (Image(
                image: AssetImage(url),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
