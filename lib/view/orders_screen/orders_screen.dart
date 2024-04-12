import 'package:ecommerceai/screen/responsive.dart';
import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/utils/font_constant/font_constant.dart';
import 'package:ecommerceai/view/orders_screen/order_details_screen/order_details.dart';
import 'package:ecommerceai/view/orders_screen/order_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

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
          title: MediaQuery.of(context).size.width < 600
              ? Text(
                  "My Orders",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontWeight: FontWeight.w600)),
                )
              : Text(
                  "My Orders",
                  style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600)),
                ),
        ),
        body: ResponsiveWidget(
          mobile: SingleChildScrollView(
            child: Column(
              children: [
                OrderWidget(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderDetailsScreen(),
                        ));
                  },
                  text1: "Order ID:678234",
                  text2: "Arriving at Apr 10",
                  text3: "Noise Smart Watch With...",
                ),
                OrderWidget(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderDetailsScreen(),
                        ));
                  },
                  text1: "Order ID:678234",
                  text2: "Arriving at Apr 10",
                  text3: "Noise Smart Watch With...",
                ),
                OrderWidget(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderDetailsScreen(),
                        ));
                  },
                  text1: "Order ID:678234",
                  text2: "Arriving at Apr 10",
                  text3: "Noise Smart Watch With...",
                ),
                OrderWidget(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderDetailsScreen(),
                        ));
                  },
                  text1: "Order ID:678234",
                  text2: "Arriving at Apr 10",
                  text3: "Noise Smart Watch With...",
                ),
              ],
            ),
          ),
          tab: SingleChildScrollView(
            child: Column(
              children: [
                OrderResponsiveWidget(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderDetailsScreen(),
                        ));
                  },
                  text1: "Order ID:678234",
                  text2: "Arriving at Apr 10",
                  text3: "Noise Smart Watch With...",
                ),
                OrderResponsiveWidget(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderDetailsScreen(),
                        ));
                  },
                  text1: "Order ID:678234",
                  text2: "Arriving at Apr 10",
                  text3: "Noise Smart Watch With...",
                ),
                OrderResponsiveWidget(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderDetailsScreen(),
                        ));
                  },
                  text1: "Order ID:678234",
                  text2: "Arriving at Apr 10",
                  text3: "Noise Smart Watch With...",
                ),
                OrderResponsiveWidget(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderDetailsScreen(),
                        ));
                  },
                  text1: "Order ID:678234",
                  text2: "Arriving at Apr 10",
                  text3: "Noise Smart Watch With...",
                ),
              ],
            ),
          ),
        ));
  }
}
