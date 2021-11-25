import 'package:flutter/material.dart';
import 'package:petshop/screens/screens_list.dart';
import 'package:petshop/values/custom_colors.dart';

class ScreenNav extends StatefulWidget {
  const ScreenNav({Key? key}) : super(key: key);

  @override
  _ScreenNavState createState() => _ScreenNavState();
}

class _ScreenNavState extends State<ScreenNav> {
  List<Widget> screenList = [
    Screens.home,
    Screens.newPetScreen,
    Screens.cartScreen,
    Screens.account,
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25), topLeft: Radius.circular(25)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 4),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: ColorsList.textcolor,
            // unselectedItemColor: Colors.black,
            iconSize: 30,
            onTap: screenChanger,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: ('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.list_outlined,
                ),
                label: ('List'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: ('Cart'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: ('Account'),
              ),
            ],
          ),
        ),
      ),
      body: screenList[_currentIndex],
    );
  }

  screenChanger(int value) {
    setState(
      () {
        _currentIndex = value;
      },
    );
  }
}
