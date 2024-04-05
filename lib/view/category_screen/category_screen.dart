import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/utils/font_constant/font_constant.dart';
import 'package:ecommerceai/view/category_screen/category_widget.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  List<Color> MyColors = [
    Colors.blueAccent.shade200,
    Colors.pinkAccent.shade100,
    Colors.greenAccent.shade200,
    Colors.purpleAccent.shade200,
    Colors.yellowAccent.shade200,
  ];

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
          centerTitle: true,
          title: Text(
            "Category",
            style: FontConstant.appBarFont,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_sharp,
                  size: 30,
                  color: ColorConstant.Black,
                ))
          ],
        ),
        body: Column(
          children: [
            CategoryScreenWidget(
              color: MyColors[0],
              product1: "Realme",
              product2: "OnePlus",
              product3: "Redmi",
              product4: "Motorola",
              categoryName: "Mobiles",
            ),
            CategoryScreenWidget(
              color: MyColors[1],
              product1: "Laptop",
              product2: "KeyBoard",
              product3: "Blutooth Headset",
              product4: "Smart Watch",
              categoryName: "Electronics",
            ),
            CategoryScreenWidget(
              color: MyColors[2],
              product1: "Pen",
              product2: "Pencils",
              product3: "Books",
              product4: "Scisssors",
              categoryName: "Stationary",
            ),
            CategoryScreenWidget(
              color: MyColors[2],
              product1: "vegetables",
              product2: "fruits",
              product3: "Sweets",
              product4: "Milk",
              categoryName: "Grocery",
            ),
            CategoryScreenWidget(
              color: MyColors[3],
              product1: "PineOil",
              product2: "Cleaner",
              product3: "Floor Cleaner",
              product4: "Soap Powder",
              categoryName: "Cleaning",
            ),
          ],
        ));
  }
}
