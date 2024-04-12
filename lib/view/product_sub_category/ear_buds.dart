import 'package:ecommerceai/screen/responsive.dart';
import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/utils/image_constant/image_constant.dart';
import 'package:ecommerceai/view/product_details_screen/ear_buds_details.dart';
import 'package:ecommerceai/view/product_details_screen/watch_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EarBudsScreen extends StatelessWidget {
  const EarBudsScreen({super.key});

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
          title: MediaQuery.of(context).size.width < 600
              ? Text(
                  "EarBuds",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontWeight: FontWeight.w600)),
                )
              : Text(
                  "EarBuds",
                  style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600)),
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
                        builder: (context) => EarBudsDetilScreen(),
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
                              color: Colors.blue,
                              image: DecorationImage(
                                  image: AssetImage(
                                    ImageConstant.CommonImage,
                                  ),
                                  fit: BoxFit.cover)),
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
                                    "Boat  Earbuds With High Bass",
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
                                      fontWeight: FontWeight.w800,
                                      fontSize: 17)),
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
                        builder: (context) => EarBudsDetilScreen(),
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
                              color: Colors.blue,
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
                                      "Boat  Earbuds With High Bass",
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
        ));
  }
}
