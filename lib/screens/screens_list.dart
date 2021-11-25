import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petshop/ui/account/account.dart';
import 'package:petshop/ui/cart/cart.dart';
import 'package:petshop/ui/homescreen/homescreen.dart';
import 'package:petshop/ui/petlist/petlist.dart';
import 'package:petshop/ui/splash/splash_screen.dart';

class Screens {
  static const splash = Splash(key: Key("Splash"));
  static const home = HomeScreen(key: Key("Home"));
  static const newPetScreen = PetList(key: Key("Pet"));
  static const cartScreen = CartScreen(key: Key("Cart"));
  static const account = Account(key: Key("Account"));
}
