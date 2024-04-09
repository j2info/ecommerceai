import 'package:ecommerceai/screen/responsive.dart';
import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/utils/image_constant/image_constant.dart';
import 'package:ecommerceai/view/product_details_screen/watch_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WatchesScreen extends StatelessWidget {
  const WatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Watches",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      body: ResponsiveWidget(
        mobile: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WatchDetailsScreen(),
                    ));
              },
              child: Container(
                decoration:
                    BoxDecoration(color: ColorConstant.white, boxShadow: [
                  BoxShadow(
                    color: ColorConstant.Black,
                    blurRadius: 2,
                  )
                ]),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 68, 252, 74),
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.CommonImage),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 2,
                              )
                            ]),
                        height: 150,
                        width: 130,
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 200,
                      color: ColorConstant.white,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Noise Smart Watch With Bluetooth Calling",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "\$1,099",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 17)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        ///////////////////FOR TAB////////////////////
        tab: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WatchDetailsScreen(),
                    ));
              },
              child: Container(
                decoration:
                    BoxDecoration(color: ColorConstant.white, boxShadow: [
                  BoxShadow(
                    color: ColorConstant.Black,
                    blurRadius: 2,
                  )
                ]),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 300,
                        width: 340,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 68, 252, 74),
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.CommonImage),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 2,
                              )
                            ]),
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 400,
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    "Noise Smart Watch With Bluetooth Callings",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25)),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$1,099",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 25)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
