import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petshop/common_widgets/bottomnavbar.dart';
import 'package:petshop/models/listcomponent.dart';
import 'package:petshop/models/listmodel.dart';
import 'package:petshop/ui/petdetail/petdetail.dart';
import 'package:petshop/values/custom_colors.dart';

// ignore: must_be_immutable
class PetList extends StatefulWidget {
  const PetList({Key? key}) : super(key: key);

  @override
  _PetListState createState() => _PetListState();
}

List<ImageModel> listImages = [
  ImageModel(
    title: 'Havanese Dog',
    age: "1 Years Old - Boys",
    price: "\$475",
    url: "assets/dog1.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Australian Dog',
    age: "1 Years Old - Boys",
    price: "\$350",
    url: "assets/dog2.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Havanese Cat',
    age: "1 Years Old - Boys",
    price: "\$235",
    url: "assets/cat1.jpeg",
    ratingt: "4.0",
    rating: 4,
  ),
  ImageModel(
    title: 'Havanese Dog',
    age: "1 Years Old - Boys",
    price: "\$475",
    url: "assets/dog1.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Australian Dog',
    age: "1 Years Old - Boys",
    price: "\$350",
    url: "assets/dog2.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Havanese Cat',
    age: "1 Years Old - Boys",
    price: "\$235",
    url: "assets/cat1.jpeg",
    ratingt: "4.0",
    rating: 4,
  ),
  ImageModel(
    title: 'Havanese Dog',
    age: "1 Years Old - Boys",
    price: "\$475",
    url: "assets/dog1.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Australian Dog',
    age: "1 Years Old - Boys",
    price: "\$350",
    url: "assets/dog2.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Havanese Cat',
    age: "1 Years Old - Boys",
    price: "\$235",
    url: "assets/cat1.jpeg",
    ratingt: "4.0",
    rating: 4,
  ),
  ImageModel(
    title: 'Havanese Dog',
    age: "1 Years Old - Boys",
    price: "\$475",
    url: "assets/dog1.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Australian Dog',
    age: "1 Years Old - Boys",
    price: "\$350",
    url: "assets/dog2.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Havanese Cat',
    age: "1 Years Old - Boys",
    price: "\$235",
    url: "assets/cat1.jpeg",
    ratingt: "4.0",
    rating: 4,
  ),
  ImageModel(
    title: 'Havanese Dog',
    age: "1 Years Old - Boys",
    price: "\$475",
    url: "assets/dog1.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Australian Dog',
    age: "1 Years Old - Boys",
    price: "\$350",
    url: "assets/dog2.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Havanese Cat',
    age: "1 Years Old - Boys",
    price: "\$235",
    url: "assets/cat1.jpeg",
    ratingt: "4.0",
    rating: 4,
  ),
  ImageModel(
    title: 'Havanese Dog',
    age: "1 Years Old - Boys",
    price: "\$475",
    url: "assets/dog1.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Australian Dog',
    age: "1 Years Old - Boys",
    price: "\$350",
    url: "assets/dog2.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Havanese Cat',
    age: "1 Years Old - Boys",
    price: "\$235",
    url: "assets/cat1.jpeg",
    ratingt: "4.0",
    rating: 4,
  ),
  ImageModel(
    title: 'Havanese Dog',
    age: "1 Years Old - Boys",
    price: "\$475",
    url: "assets/dog1.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Australian Dog',
    age: "1 Years Old - Boys",
    price: "\$350",
    url: "assets/dog2.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Havanese Cat',
    age: "1 Years Old - Boys",
    price: "\$235",
    url: "assets/cat1.jpeg",
    ratingt: "4.0",
    rating: 4,
  ),
  ImageModel(
    title: 'Havanese Dog',
    age: "1 Years Old - Boys",
    price: "\$475",
    url: "assets/dog1.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Australian Dog',
    age: "1 Years Old - Boys",
    price: "\$350",
    url: "assets/dog2.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Havanese Cat',
    age: "1 Years Old - Boys",
    price: "\$235",
    url: "assets/cat1.jpeg",
    ratingt: "4.0",
    rating: 4,
  ),
  ImageModel(
    title: 'Havanese Dog',
    age: "1 Years Old - Boys",
    price: "\$475",
    url: "assets/dog1.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Australian Dog',
    age: "1 Years Old - Boys",
    price: "\$350",
    url: "assets/dog2.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Havanese Cat',
    age: "1 Years Old - Boys",
    price: "\$235",
    url: "assets/cat1.jpeg",
    ratingt: "4.0",
    rating: 4,
  ),
  ImageModel(
    title: 'Havanese Dog',
    age: "1 Years Old - Boys",
    price: "\$475",
    url: "assets/dog1.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Australian Dog',
    age: "1 Years Old - Boys",
    price: "\$350",
    url: "assets/dog2.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Havanese Cat',
    age: "1 Years Old - Boys",
    price: "\$235",
    url: "assets/cat1.jpeg",
    ratingt: "4.0",
    rating: 4,
  ),
  ImageModel(
    title: 'Havanese Dog',
    age: "1 Years Old - Boys",
    price: "\$475",
    url: "assets/dog1.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Australian Dog',
    age: "1 Years Old - Boys",
    price: "\$350",
    url: "assets/dog2.jpeg",
    ratingt: "5.0",
    rating: 5,
  ),
  ImageModel(
    title: 'Havanese Cat',
    age: "1 Years Old - Boys",
    price: "\$235",
    url: "assets/cat1.jpeg",
    ratingt: "4.0",
    rating: 4,
  ),
];

class _PetListState extends State<PetList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: InkWell(
            child: const Icon(
              Icons.arrow_back,
              color: ColorsList.textcolor,
              size: 30,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Center(
          child: Text(
            "Newest Pet",
            style: GoogleFonts.lato(
                color: ColorsList.textcolor,
                fontSize: 24,
                fontWeight: FontWeight.w900),
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
      bottomNavigationBar: const BottomNavBar(),
      body: Center(
        child: Column(
          children: [
            TextFormField(
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
                hintStyle: const TextStyle(fontSize: 16, color: Colors.black45),
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 1.2,
                    maxHeight: 50),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: listImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: ListComponent(
                        title: listImages[index].title,
                        age: listImages[index].age,
                        price: listImages[index].price,
                        url: listImages[index].url,
                        ratingt: listImages[index].ratingt,
                        rating: listImages[index].rating,
                        key: UniqueKey(),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PetDetail(
                              title: listImages[index].title,
                              age: listImages[index].age,
                              price: listImages[index].price,
                              url: listImages[index].url,
                              ratingt: listImages[index].ratingt,
                              rating: listImages[index].rating,
                              key: UniqueKey(),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
