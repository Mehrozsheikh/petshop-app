import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petshop/values/custom_colors.dart';
import 'package:petshop/values/image_list.dart';
import 'package:petshop/values/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Image(image: AssetImage(ImageList.profile)),
        ),
        title: ListTile(
          dense: true,
          contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
          title: Text(
            "Hello,",
            style: GoogleFonts.lato(color: Colors.black45, fontSize: 16),
          ),
          subtitle: Text(
            Strings.name,
            style: GoogleFonts.lato(
              color: ColorsList.textcolor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.notifications_outlined,
              color: ColorsList.textcolor,
              size: 32,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: const Center(
        child: Text(
          Strings.mainText,
          style: TextStyle(
            fontSize: 30,
            color: ColorsList.textcolor,
          ),
        ),
      ),
    );
  }
}
