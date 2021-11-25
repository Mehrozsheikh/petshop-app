import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petshop/screens/screens_list.dart';
import 'package:petshop/ui/homescreen/homescreen.dart';
import 'package:petshop/ui/petlist/petlist.dart';
import 'package:petshop/values/image_list.dart';
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
        iconTheme: const IconThemeData(color: ColorsList.textcolor),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageList.splashlogo),
                ),
                color: Colors.transparent,
              ),
              child: Text(''),
            ),
            ListTile(
              title: Text(
                'Shop',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: const Icon(Icons.shopping_basket),
              onTap: () {
                Get.to(
                  () => Screens.home,
                );
              },
            ),
            ListTile(
              title: Text(
                'Categories',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: const Icon(Icons.category),
              onTap: () {
                Get.to(
                  () => Screens.newPetScreen,
                );
              },
            ),
            ListTile(
              title: Text(
                'Cart',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: const Icon(Icons.shopping_cart),
              onTap: () {
                Get.to(
                  () => Screens.cartScreen,
                );
              },
            ),
            ListTile(
              title: Text(
                'Settings',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Login',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: const Icon(Icons.login),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 400,
          child: Column(
            children: [
              const Image(
                image: AssetImage(ImageList.cart),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  "Your Cart is Empty :(",
                  style: GoogleFonts.arimo(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: ColorsList.textcolor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: InkWell(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
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
                        "Shop Now",
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Get.to(
                      () => Screens.home,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
