import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petshop/common_widgets/rating.dart';
import 'package:petshop/values/custom_colors.dart';

// ignore: must_be_immutable
class PetDetail extends StatelessWidget {
  String title = "abc";
  String age = "1 Years Old - Boys";
  String price = "\$375";
  int rating = 5;
  String ratingt = "5.0";
  String url = "assets/dog.jpeg";
  PetDetail({
    Key? key,
    this.title = "abc",
    this.age = "1 Years Old - Boys",
    this.price = "\$375",
    this.url = "assets/dog.jpeg",
    this.ratingt = "5.0",
    this.rating = 5,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        children: [
          Center(
            child: Container(
              constraints: BoxConstraints.expand(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage(url),
                  alignment: Alignment.center,
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 40.0, left: 20),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints.expand(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 25.0, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: Text(
                              title,
                              style: GoogleFonts.lato(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                color: ColorsList.textcolor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              price,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        age,
                        style: const TextStyle(color: Colors.black),
                      ),
                      Row(
                        children: [
                          Text(
                            ratingt,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: IconTheme(
                              data: IconThemeData(
                                color: Colors.yellow[600],
                                size: 20,
                              ),
                              child: StarDisplay(value: rating),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          "About",
                          style: GoogleFonts.lato(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            color: ColorsList.textcolor,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 12.0),
                        child: Text(
                          "It is a long established fact that a reader will be distracted by the readable content of a page. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 45.0, left: 20, right: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      color: ColorsList.textcolor,
                      boxShadow: [
                        BoxShadow(
                          color: ColorsList.textcolor.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Add To Cart",
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
