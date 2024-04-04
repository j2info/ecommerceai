import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/view/product_details_screen/ear_buds.dart';
import 'package:ecommerceai/view/product_details_screen/power_bank.dart';
import 'package:ecommerceai/view/product_details_screen/tablet.dart';
import 'package:ecommerceai/view/product_details_screen/watches.dart';
import 'package:flutter/material.dart';

class ProductBottomnavigationBar extends StatefulWidget {
  const ProductBottomnavigationBar({super.key});

  @override
  State<ProductBottomnavigationBar> createState() =>
      _ProductBottomnavigationBarState();
}

class _ProductBottomnavigationBarState
    extends State<ProductBottomnavigationBar> {
  int selectedIndex = 0;
  List<Widget> ProductScreens = [
    TabletScreen(),
    EarBudsScreen(),
    WatchesScreen(),
    PowerBankScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorConstant.DefRed,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
              ),
              label: "Tablet"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
              ),
              label: "EarBuds"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
              ),
              label: "Watches"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
              ),
              label: "PowerBank"),
        ],
      ),
    );
  }
}
