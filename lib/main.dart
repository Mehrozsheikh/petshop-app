import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petshop/screens/screens_list.dart';

void main() {
  runApp(const MyApp(
    key: Key("MyApp"),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.light,
      /* ThemeMode.system to follow system theme, 
         ThemeMode.light for light theme, 
         ThemeMode.dark for dark theme
      */
      debugShowCheckedModeBanner: false,
      title: "Pet Shop",
      locale: Get.deviceLocale,
      getPages: [
        GetPage(
          name: "/",
          page: () => Screens.splash,
        ),
      ],
    );
  }
}
