import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petshop/values/values.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String myText = "Hello World";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [ColorsList.primaryColor, ColorsList.secondaryColor],
          ),
        ),
        child: Center(
          child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            verticalDirection: VerticalDirection.down,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                constraints:
                    const BoxConstraints.expand(height: 300, width: 300),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageList.splashlogo),
                      fit: BoxFit.fill),
                ),
              ),
              Text(
                Strings.splashText,
                style: GoogleFonts.fredokaOne(
                  color: Colors.black,
                  fontSize: 35,
                  wordSpacing: 2,
                  letterSpacing: 8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
