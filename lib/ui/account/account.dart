import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petshop/screens/screens_list.dart';
import 'package:petshop/ui/cart/cart.dart';
import 'package:petshop/ui/homescreen/homescreen.dart';
import 'package:petshop/ui/petlist/petlist.dart';
import 'package:petshop/values/values.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool isSwitched = false;
  bool value = false;

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
            "Settings",
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
      body: SingleChildScrollView(
        child: Wrap(
          verticalDirection: VerticalDirection.down,
          children: [
            ListTile(
              title: Text(
                'Login',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: const Icon(Icons.person),
              trailing: const Icon(Icons.keyboard_arrow_right, size: 28),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20, bottom: 15),
              child: SizedBox(
                child: Text(
                  "General Settings",
                  style: GoogleFonts.lato(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'My Wishlist',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: const Icon(Icons.favorite_outline),
              trailing: const Icon(Icons.keyboard_arrow_right, size: 28),
              onTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
              child: Divider(),
            ),
            ListTile(
              title: Text(
                'Dark Theme',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: const Icon(Icons.notifications_outlined),
              trailing: Switch(
                value: isSwitched,
                onChanged: (value) => setState(() => isSwitched = value),
                activeColor: ColorsList.textcolor,
              ),
              onTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
              child: Divider(),
            ),
            ListTile(
              title: Text(
                'Language',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: const Icon(Icons.language),
              trailing: const Icon(Icons.keyboard_arrow_right, size: 28),
              onTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
              child: Divider(),
            ),
            ListTile(
              title: Text(
                'Currencies',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: const Icon(Icons.attach_money),
              trailing: const Icon(Icons.keyboard_arrow_right, size: 28),
              onTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12.0),
              child: Divider(),
            ),
            ListTile(
              title: Text(
                'Rate the app',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: const Icon(Icons.person),
              trailing: const Icon(Icons.keyboard_arrow_right, size: 28),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
