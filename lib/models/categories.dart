import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petshop/values/values.dart';

// ignore: must_be_immutable
class BoxComponent extends StatelessWidget {
  String title = "abc";
  String url = "abc";
  BoxComponent({
    Key? key,
    this.title = "abc",
    this.url = "assets/dog.jpeg",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 73,
      height: 73,
      child: Card(
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Image.asset(url),
          ),
          subtitle: Text(
            title,
            style: GoogleFonts.lato(
              fontSize: 10,
              color: ColorsList.textcolor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0.2,
            blurRadius: 8,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
