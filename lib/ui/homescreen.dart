import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
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
      body: SingleChildScrollView(
        child: Wrap(
          verticalDirection: VerticalDirection.down,
          children: [
            ListTile(
              title: Card(
                elevation: 2.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 10),
                    hintText: "Search your favourite pet...",
                    hintStyle: const TextStyle(fontSize: 16, color: ColorsList.textcolor),
                    border: InputBorder.none,
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width/1.2,
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
                    icon:const Icon(
                      Icons.manage_search, 
                      size: 30, 
                      color: Colors.white),),
                ),
              ),
            ),
            ListTile(
                title: Text("Pet Category", style: GoogleFonts.lato(
                color: ColorsList.textcolor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                width: 72,
                height: 72,
                child: Card(
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Image.asset(ImageList.dog),
                    ),
                    subtitle: Text(Strings.dog, style: GoogleFonts.lato(
                      fontSize: 12, color: ColorsList.textcolor,
                    ),
                    textAlign: TextAlign.center,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 0.2,
                      blurRadius: 8,
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 72,
              height: 72,
              child: Card(
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset(ImageList.cat),
                  ),
                  subtitle: Text(Strings.cat, style: GoogleFonts.lato(
                    fontSize: 12, color: ColorsList.textcolor,
                  ),
                  textAlign: TextAlign.center,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 0.2,
                      blurRadius: 8,
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
            ),
            Container(
              width: 72,
              height: 72,
              child: Card(
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset(ImageList.bird),
                  ),
                  subtitle: Text(Strings.bird, style: GoogleFonts.lato(
                    fontSize: 12, color: ColorsList.textcolor,
                  ),
                  textAlign: TextAlign.center,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 0.2,
                      blurRadius: 8,
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
            ),
            Container(
              width: 72,
              height: 72,
              child: Card(
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset(ImageList.rabbit),
                  ),
                  subtitle: Text(Strings.rabbit, style: GoogleFonts.lato(
                    fontSize: 10, color: ColorsList.textcolor,
                  ),
                  textAlign: TextAlign.center,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 0.2,
                      blurRadius: 8,
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
            ),
            Container(
              width: 72,
              height: 72,
              child: Card(
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Image.asset(ImageList.other),
                  ),
                  subtitle: Text(Strings.other, style: GoogleFonts.lato(
                    fontSize: 11, color: ColorsList.textcolor,
                  ),
                  textAlign: TextAlign.center,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 0.2,
                      blurRadius: 8,
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
            ),
          ]
        ),
      ),
    );
  }
}
