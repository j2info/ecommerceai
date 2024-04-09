import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceai/screen/responsive.dart';
import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/view/cart_screen/buy_now.dart';
import 'package:ecommerceai/view/cart_screen/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class PowerBankDetailsScreen extends StatefulWidget {
  const PowerBankDetailsScreen({super.key});

  @override
  State<PowerBankDetailsScreen> createState() => _PowerBankDetailsScreenState();
}

class _PowerBankDetailsScreenState extends State<PowerBankDetailsScreen> {
  List<Color> MyColors = [
    Colors.purple.shade400,
    Colors.yellow,
    Colors.red,
    Colors.greenAccent.shade400
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: ColorConstant.Black,
              ),
            ),
            title: Text(
              "Product Details",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          body: ResponsiveWidget(
            mobile: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      width: 300,
                      color: MyColors[currentIndex],
                      child: CarouselSlider.builder(
                        itemCount: MyColors.length,
                        itemBuilder: (context, index, realIndex) => Container(
                          decoration: BoxDecoration(
                              //color: MyColors[index],
                              // image: DecorationImage(
                              //     image: NetworkImage(image), fit: BoxFit.cover)
                              ),
                        ),
                        options: CarouselOptions(
                          autoPlay: false,
                          scrollDirection: Axis.horizontal,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0;
                            i < MyColors.length;
                            i++) //adding the dots under carousal
                          Container(
                            height: 10,
                            width: 10,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: currentIndex == i
                                  ? ColorConstant.DefRed
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "Noise Power Bank with 500 mah Battery",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 20,
                                    color: ColorConstant.Black,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "\$ 1,500",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      color: ColorConstant.Black,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        RatingBar.builder(
                          unratedColor: Colors.grey,
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 25,
                          itemPadding: EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: ColorConstant.DefRed,
                          ),
                          onRatingUpdate: (index) {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 17,
                              color: ColorConstant.Black,
                              fontWeight: FontWeight.w500)),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CartScreen(),
                                ));
                          },
                          child: Container(
                            height: 60,
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: ColorConstant.DefRed)),
                            child: Center(
                                child: Text(
                              "Add to Cart",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      color: ColorConstant.DefRed,
                                      fontWeight: FontWeight.bold)),
                            )),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BuyNowScreen(),
                                ));
                          },
                          child: Container(
                            height: 60,
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorConstant.DefRed),
                            child: Center(
                                child: Text(
                              "Buy Now",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      color: ColorConstant.white,
                                      fontWeight: FontWeight.bold)),
                            )),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            /////////////////////FOR TAB/////////////////
            tab: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Container(
                      height: 500,
                      width: 700,
                      color: MyColors[currentIndex],
                      child: CarouselSlider.builder(
                        itemCount: MyColors.length,
                        itemBuilder: (context, index, realIndex) => Container(
                          decoration: BoxDecoration(
                              //color: MyColors[index],
                              // image: DecorationImage(
                              //     image: NetworkImage(image), fit: BoxFit.cover)
                              ),
                        ),
                        options: CarouselOptions(
                          autoPlay: false,
                          scrollDirection: Axis.horizontal,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0;
                            i < MyColors.length;
                            i++) //adding the dots under carousal
                          Container(
                            height: 20,
                            width: 20,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: currentIndex == i
                                  ? ColorConstant.DefRed
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "Noise Power Bank with 500 mah Battery",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 30,
                                    color: ColorConstant.Black,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(
                          unratedColor: Colors.grey,
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 35,
                          itemPadding: EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: ColorConstant.DefRed,
                          ),
                          onRatingUpdate: (index) {},
                        ),
                        Text(
                          "\$ 1,500",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 30,
                                  color: ColorConstant.Black,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 25,
                              color: ColorConstant.Black,
                              fontWeight: FontWeight.w400)),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CartScreen(),
                                ));
                          },
                          child: Container(
                            height: 80,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: ColorConstant.DefRed, width: 5)),
                            child: Center(
                                child: Text(
                              "Add to Cart",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 25,
                                      color: ColorConstant.DefRed,
                                      fontWeight: FontWeight.bold)),
                            )),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BuyNowScreen(),
                                ));
                          },
                          child: Container(
                            height: 80,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorConstant.DefRed),
                            child: Center(
                                child: Text(
                              "Buy Now",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 25,
                                      color: ColorConstant.white,
                                      fontWeight: FontWeight.bold)),
                            )),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
