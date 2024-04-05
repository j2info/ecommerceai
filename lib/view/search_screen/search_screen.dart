import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/utils/font_constant/font_constant.dart';
import 'package:ecommerceai/view/product_details_screen/watch_details.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  final _searchKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Form(
              key: _searchKey,
              child: Container(
                height: 50,
                width: 280,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () async {
                          final ImagePicker picker = ImagePicker();
                          // Pick an image.
                          final XFile? image = await picker.pickImage(
                              source: ImageSource.gallery);
                        },
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 25,
                        ),
                      ),
                      //focusColor: ColorConstant.DefRed,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorConstant.DefRed),
                      ),
                      filled: true,
                      fillColor: ColorConstant.BottomnavColor,
                      hintText: "Search",
                      prefixIcon:
                          InkWell(onTap: () {}, child: Icon(Icons.search)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorConstant.DefRed),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            SizedBox(
              width: 2.5,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Search",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 15,
                        color: ColorConstant.DefRed,
                        fontWeight: FontWeight.w600)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
