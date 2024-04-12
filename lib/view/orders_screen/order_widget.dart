import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/utils/font_constant/font_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      this.onTap});
  final String text1;
  final String text2;
  final String text3;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Material(
            elevation: 8,
            child: InkWell(
              onTap: onTap,
              child: Container(
                height: 130,
                width: 380,
                decoration: BoxDecoration(
                    color: ColorConstant.white,
                    boxShadow: [
                      BoxShadow(color: ColorConstant.grey, blurRadius: 2)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: FontConstant.defFont,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            text2,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    color: ColorConstant.DefRed,
                                    fontWeight: FontWeight.w600)),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                size: 30,
                              ))
                        ],
                      ),
                      Text(text3, style: FontConstant.defFont),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class OrderResponsiveWidget extends StatelessWidget {
  const OrderResponsiveWidget(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      this.onTap});
  final String text1;
  final String text2;
  final String text3;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Material(
            elevation: 8,
            child: InkWell(
              onTap: onTap,
              child: Container(
                height: 200,
                width: 750,
                decoration: BoxDecoration(
                    color: ColorConstant.white,
                    boxShadow: [
                      BoxShadow(color: ColorConstant.grey, blurRadius: 2)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: FontConstant.defTabFont,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            text2,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 24,
                                    color: ColorConstant.DefRed,
                                    fontWeight: FontWeight.w600)),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                size: 30,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(text3, style: FontConstant.defTabFont),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
