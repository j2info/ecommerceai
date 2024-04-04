import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
          "Cart",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(fontWeight: FontWeight.w600)),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chat_rounded,
                color: ColorConstant.Black,
                size: 30,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.amber,
                height: 200,
                width: 400,
                child: Row(
                  children: [
                    Container(
                      height: 180,
                      width: 180,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Noise Smart Watch With Bluetooth Calling",
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(
                              height: 15,
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
                                  itemSize: 23,
                                  // itemPadding: EdgeInsets.symmetric(
                                  //   horizontal: 1,
                                  // ),
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: ColorConstant.DefRed,
                                  ),
                                  onRatingUpdate: (index) {},
                                ),
                                Text("\$ 1,099")
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
