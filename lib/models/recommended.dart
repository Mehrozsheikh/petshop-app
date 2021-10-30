import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petshop/common_widgets/rating.dart';
import 'package:petshop/values/values.dart';

// ignore: must_be_immutable
class RecommendedBox extends StatelessWidget {
  String title = "abc";
  Color color = Colors.black;
  String url = "abc";
  String ratingt = "5";

  int rating = 5;

  RecommendedBox({
    Key? key,
    this.title = "abc",
    this.color = Colors.black,
    this.url = "assets/dog.jpeg",
    this.rating = 5,
    this.ratingt = "5",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13.0, top: 30),
      child: Container(
        width: 300,
        height: 170,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          image: DecorationImage(
            scale: 2,
            alignment: Alignment.centerRight,
            image: AssetImage(url),
          ),
        ),
        child: Center(
          child: ListTile(
            title: Text(title,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            subtitle: Row(
              children: [
                Text(
                  ratingt,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: IconTheme(
                    data: const IconThemeData(
                      color: Colors.white,
                      size: 24,
                    ),
                    child: StarDisplay(value: rating),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
