import 'package:ecommerceai/utils/color_constant/color_constant.dart';
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
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(color: ColorConstant.white, boxShadow: [
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
                      height: 150,
                      width: 130,
                      color: const Color.fromARGB(255, 68, 252, 74),
                    ),
                  ),
                  Container(
                    height: 100,
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
    );
  }
}
