import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petshop/common_widgets/bottomnavbar.dart';
import 'package:petshop/values/values.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(
          child: Text(
            "Cart",
            style: GoogleFonts.lato(
                color: ColorsList.textcolor,
                fontSize: 24,
                fontWeight: FontWeight.w900),
          ),
        ),
        leading: const Icon(
          Icons.menu,
          color: ColorsList.textcolor,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.notifications_outlined,
              color: ColorsList.textcolor,
              size: 32,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
