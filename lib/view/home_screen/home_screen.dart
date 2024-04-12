import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceai/screen/responsive.dart';
import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/view/home_screen/home_screen_widget.dart';
import 'package:ecommerceai/view/home_screen/responsive_home_widget.dart';
import 'package:ecommerceai/view/product_details_screen/watch_details.dart';
import 'package:ecommerceai/view/product_sub_category/product_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  List<Color> MyColors = [
    Color.fromARGB(255, 33, 156, 243),
    Color.fromARGB(255, 46, 245, 53),
    Color.fromARGB(255, 160, 48, 252)
  ];
  List<String> data = [
    "Product 0",
    "Product 1",
    "Product 2",
    "Product 3",
    "Product 4",
    "Product 5",
    // Add more products as needed
  ];
  List<String> filteredData = [];

  @override
  void initState() {
    filteredData = data; // Initialize filteredData with all data initially
    super.initState();
  }

  void filterData(String query) {
    setState(() {
      if (query.isNotEmpty) {
        // Filter the data based on the search query
        filteredData = data
            .where((product) =>
                product.toLowerCase().contains(query.toLowerCase()))
            .toList();
      } else {
        // If the query is empty, show all data
        filteredData = data;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.shopping_cart,
            size: 30,
          ),
          title: MediaQuery.of(context).size.width < 600
              ? Text(
                  "SHOPEE",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: ColorConstant.DefRed,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w800,
                      fontSize: 28,
                    ),
                  ),
                )
              : Text(
                  "SHOPEE",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: ColorConstant.DefRed,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w800,
                      fontSize: 35,
                    ),
                  ),
                ),
          // Text(
          //   "SHOPEE",
          //   style: GoogleFonts.poppins(
          //     textStyle: TextStyle(
          //         color: ColorConstant.DefRed,
          //         letterSpacing: 2,
          //         fontWeight: FontWeight.w800,
          //         fontSize: 28),
          //   ),
          // ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_active,
                size: 30,
                color: ColorConstant.Black,
              ),
            ),
            InkWell(
              onTap: () {
                // Search for the entered query
                filterData(searchController.text);
                setState(() {});
              },
              child: Icon(
                Icons.search,
                size: 30,
                color: ColorConstant.Black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chat_sharp,
                size: 30,
                color: ColorConstant.Black,
              ),
            ),
          ],
        ),
        body: ResponsiveWidget(
          mobile: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  height: 70,
                  width: 360,
                  child: TextField(
                    controller: searchController,
                    onChanged: filterData,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: ColorConstant.DefRed),
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        size: 30,
                      ),
                      hintText: "Search for Products, Brands",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
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
                    decoration: BoxDecoration(color: MyColors[index]),
                    child: Center(
                      child: Text(
                        "8.8 MEGA FLASH SALE",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  options: CarouselOptions(
                    autoPlay: true,
                    scrollDirection: Axis.horizontal,
                    viewportFraction: 1,
                  ),
                ),
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
                    ),
                  );
                },
                title: "Product",
              ),
            ],
          ),
          tab: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  height: 100,
                  width: 700,
                  child: TextField(
                    controller: searchController,
                    onChanged: filterData,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: ColorConstant.DefRed),
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        size: 40,
                      ),
                      hintText: "Search for Products, Brands",
                      hintStyle: TextStyle(fontSize: 25),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 400,
                width: 800,
                child: CarouselSlider.builder(
                  itemCount: MyColors.length,
                  itemBuilder: (context, index, realIndex) => Container(
                    decoration: BoxDecoration(color: MyColors[index]),
                    child: Center(
                      child: Text(
                        "8.8 MEGA FLASH SALE",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                  options: CarouselOptions(
                    autoPlay: true,
                    scrollDirection: Axis.horizontal,
                    viewportFraction: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ResponsiveHomeWidget(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductBottomnavigationBar(),
                    ),
                  );
                },
                title: "Product",
              ),
            ],
          ),
        ));
  }
}
