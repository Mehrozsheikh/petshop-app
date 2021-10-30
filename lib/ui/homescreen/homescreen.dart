import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petshop/models/categories.dart';
import 'package:petshop/models/recommended.dart';
import 'package:petshop/values/image_list.dart';
import 'package:petshop/values/values.dart';

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
          padding: EdgeInsets.only(left: 12.0),
          child: Image(
            image: AssetImage(ImageList.profile),
            width: 70,
            height: 70,
          ),
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
      bottomNavigationBar: Container(
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
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: ColorsList.textcolor,
            iconSize: 30,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: ('Home')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.backpack_outlined), label: ('Cart')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.note_alt_outlined), label: ('List')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: ('Account')),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          verticalDirection: VerticalDirection.down,
          children: [
            ListTile(
              title: Card(
                color: Colors.transparent,
                elevation: 0.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38, width: 1.0),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black38, width: 1.0),
                    ),
                    prefixIcon: const Icon(Icons.search),
                    contentPadding: const EdgeInsets.only(left: 10, top: 13),
                    hintText: "Search your favourite pet...",
                    hintStyle:
                        const TextStyle(fontSize: 16, color: Colors.black45),
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width / 1.2,
                        maxHeight: 50),
                  ),
                ),
              ),
              trailing: SizedBox(
                width: 55,
                height: 55,
                child: Card(
                  elevation: 2.0,
                  color: ColorsList.textcolor,
                  child: IconButton(
                    constraints: const BoxConstraints(
                      maxHeight: 50,
                      maxWidth: 50,
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.manage_search,
                        size: 30, color: Colors.white),
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Pet Category",
                style: GoogleFonts.lato(
                  color: ColorsList.textcolor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: BoxComponent(title: Strings.dog, url: ImageList.dog),
            ),
            BoxComponent(title: Strings.cat, url: ImageList.cat),
            BoxComponent(title: Strings.bird, url: ImageList.bird),
            BoxComponent(title: Strings.rabbit, url: ImageList.rabbit),
            BoxComponent(title: Strings.other, url: ImageList.other),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RecommendedBox(
                    title: "Havanese Dog",
                    rating: 5,
                    ratingt: "5.0",
                    url: "assets/dog1.jpeg",
                    color: ColorsList.primaryColor,
                  ),
                  RecommendedBox(
                    title: "Bassador Dog",
                    rating: 4,
                    ratingt: "4.0",
                    url: "assets/dog2.jpeg",
                    color: Colors.indigo,
                  ),
                  RecommendedBox(
                    title: "Persian Cat",
                    rating: 5,
                    ratingt: "5.0",
                    url: "assets/cat1.jpeg",
                    color: Colors.purpleAccent,
                  ),
                  RecommendedBox(
                    title: "Ragdoll Cat",
                    rating: 4,
                    ratingt: "4.0",
                    url: "assets/cat2.jpeg",
                    color: Colors.redAccent,
                  ),
                  RecommendedBox(
                    title: "Abyssinian  Cat",
                    rating: 4,
                    ratingt: "4.0",
                    url: "assets/cat3.jpeg",
                    color: Colors.green,
                  ),
                  RecommendedBox(
                    title: "Beveren Rabbits",
                    rating: 4,
                    ratingt: "4.0",
                    url: "assets/rabbit1.jpeg",
                    color: Colors.blueAccent,
                  ),
                  const SizedBox(width: 18),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Newest Pet",
                style: GoogleFonts.lato(
                  color: ColorsList.textcolor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
