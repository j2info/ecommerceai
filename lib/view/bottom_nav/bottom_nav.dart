import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/view/account_screen/account_screen.dart';
import 'package:ecommerceai/view/cart_screen/cart_screen.dart';
import 'package:ecommerceai/view/category_screen/category_screen.dart';
import 'package:ecommerceai/view/home_screen/home_screen.dart';
import 'package:ecommerceai/view/search_screen/search_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int selectedIndex = 0;
  List<Widget> MyScreens = [
    HomeScreen(),
    CartScreen(),
    SearchScreen(),
    CategoryScreen(),
    AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          backgroundColor: ColorConstant.BottomnavColor,
          selectedItemColor: ColorConstant.DefRed,
          unselectedItemColor: ColorConstant.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "Category"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_pin), label: "Account"),
          ]),
    );
  }
}
