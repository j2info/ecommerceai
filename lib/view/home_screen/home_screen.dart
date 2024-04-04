import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/view/home_screen/home_screen_widget.dart';
import 'package:ecommerceai/view/product_sub_category/product_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Color> MyColors = [
    Color.fromARGB(255, 33, 156, 243),
    Color.fromARGB(255, 46, 245, 53),
    Color.fromARGB(255, 160, 48, 252)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.shopping_cart,
          size: 30,
        ),
        title: Text(
          "SHOPEE",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: ColorConstant.DefRed,
                letterSpacing: 2,
                fontWeight: FontWeight.w800,
                fontSize: 28),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_active,
                size: 30,
                color: ColorConstant.Black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                height: 70,
                width: 360,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      hintText: "Search for Products, Brands",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 180,
              width: 400,
              child: CarouselSlider.builder(
                  itemCount: MyColors.length,
                  itemBuilder: (context, index, realIndex) => Container(
                        //height: 10,
                        //width: 400,
                        decoration: BoxDecoration(color: MyColors[index]),
                        child: Center(
                          child: Text(
                            "8.8 MEGA FLASH SALE",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30)),
                          ),
                        ),
                      ),
                  options: CarouselOptions(
                      autoPlay: true,
                      scrollDirection: Axis.horizontal,
                      viewportFraction: 1)),
            ),
            SizedBox(
              height: 20,
            ),
            HomeScreenWidget(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductBottomnavigationBar(),
                    ));
              },
              title: "Product ",
            )
          ],
        ),
      ),
    );
  }
}
