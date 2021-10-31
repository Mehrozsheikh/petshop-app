import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petshop/common_widgets/rating.dart';

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
    return SizedBox(
      height: 205,
      width: 300,
      child: Stack(
        children: [
          Positioned(
            child: Card(
              color: color,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(title,
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          ratingt,
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: IconTheme(
                          data: const IconThemeData(
                            color: Colors.white,
                            size: 20,
                          ),
                          child: StarDisplay(value: rating),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            top: 30,
            left: 3,
            right: 3,
            bottom: 0,
          ),
          Positioned(
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                constraints:
                    const BoxConstraints.expand(width: 190, height: 190),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage(url), alignment: Alignment.centerRight),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
