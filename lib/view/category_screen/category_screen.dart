import 'package:ecommerceai/screen/responsive.dart';
import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/utils/font_constant/font_constant.dart';
import 'package:ecommerceai/view/category_screen/category_widget.dart';
import 'package:ecommerceai/view/category_screen/responsive_category_widget.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<Color> MyColors = [
    Colors.blueAccent.shade200,
    Colors.pinkAccent.shade100,
    Colors.greenAccent.shade200,
    Colors.purpleAccent.shade200,
    Colors.yellowAccent.shade200,
  ];
  int _selectedCategoryIndex = -1;

  void _handleCategoryTap(int index) {
    setState(() {
      if (_selectedCategoryIndex == index) {
        // Close the opened list view
        _selectedCategoryIndex = -1;
      } else {
        // Open the list view associated with the tapped category
        _selectedCategoryIndex = index;
      }
    });
  }

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
        body: SingleChildScrollView(
          child: ResponsiveWidget(
            mobile: Column(
              children: [
                CategoryScreenWidget(
                  onTap: () {
                    _handleCategoryTap(0);
                  },
                  isSelected: _selectedCategoryIndex == 0,
                  color: MyColors[0],
                  product1: "Realme",
                  product2: "OnePlus",
                  product3: "Redmi",
                  product4: "Motorola",
                  categoryName: "Mobiles",
                ),
                CategoryScreenWidget(
                  isSelected: _selectedCategoryIndex == 1,
                  onTap: () {
                    _handleCategoryTap(1);
                  },
                  color: MyColors[1],
                  product1: "Laptop",
                  product2: "KeyBoard",
                  product3: "Blutooth Headset",
                  product4: "Smart Watch",
                  categoryName: "Electronics",
                ),
                CategoryScreenWidget(
                  onTap: () {
                    _handleCategoryTap(2);
                  },
                  isSelected: _selectedCategoryIndex == 2,
                  color: MyColors[2],
                  product1: "Pen",
                  product2: "Pencils",
                  product3: "Books",
                  product4: "Scisssors",
                  categoryName: "Stationary",
                ),
                CategoryScreenWidget(
                  onTap: () {
                    _handleCategoryTap(3);
                  },
                  isSelected: _selectedCategoryIndex == 3,
                  color: MyColors[2],
                  product1: "vegetables",
                  product2: "fruits",
                  product3: "Sweets",
                  product4: "Milk",
                  categoryName: "Grocery",
                ),
                CategoryScreenWidget(
                  onTap: () {
                    _handleCategoryTap(4);
                  },
                  isSelected: _selectedCategoryIndex == 4,
                  color: MyColors[3],
                  product1: "PineOil",
                  product2: "Cleaner",
                  product3: "Floor Cleaner",
                  product4: "Soap Powder",
                  categoryName: "Cleaning",
                ),
              ],
            ),
            tab: SingleChildScrollView(
              child: Column(
                children: [
                  ResponsiveCategoryWidget(
                    onTap: () {
                      _handleCategoryTap(0);
                    },
                    isSelected: _selectedCategoryIndex == 0,
                    color: MyColors[0],
                    product1: "Realme",
                    product2: "OnePlus",
                    product3: "Redmi",
                    product4: "Motorola",
                    categoryName: "Mobiles",
                  ),
                  ResponsiveCategoryWidget(
                    onTap: () {
                      _handleCategoryTap(1);
                    },
                    isSelected: _selectedCategoryIndex == 1,
                    color: MyColors[1],
                    product1: "Laptop",
                    product2: "KeyBoard",
                    product3: "Blutooth Headset",
                    product4: "Smart Watch",
                    categoryName: "Electronics",
                  ),
                  ResponsiveCategoryWidget(
                    onTap: () {
                      _handleCategoryTap(2);
                    },
                    isSelected: _selectedCategoryIndex == 2,
                    color: MyColors[2],
                    product1: "Pen",
                    product2: "Pencils",
                    product3: "Books",
                    product4: "Scisssors",
                    categoryName: "Stationary",
                  ),
                  ResponsiveCategoryWidget(
                    onTap: () {
                      _handleCategoryTap(3);
                    },
                    isSelected: _selectedCategoryIndex == 3,
                    color: MyColors[2],
                    product1: "vegetables",
                    product2: "fruits",
                    product3: "Sweets",
                    product4: "Milk",
                    categoryName: "Grocery",
                  ),
                  ResponsiveCategoryWidget(
                    onTap: () {
                      _handleCategoryTap(4);
                    },
                    isSelected: _selectedCategoryIndex == 4,
                    color: MyColors[3],
                    product1: "PineOil",
                    product2: "Cleaner",
                    product3: "Floor Cleaner",
                    product4: "Soap Powder",
                    categoryName: "Cleaning",
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
