import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/utils/font_constant/font_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentResponsiveWidget extends StatelessWidget {
  const PaymentResponsiveWidget(
      {super.key, required this.icon, required this.title, this.subtitle});
  final Icon icon;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListTile(
        leading: icon,
        title: Text(
          textAlign: TextAlign.justify,
          title,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
        ),
        subtitle: Text(
          textAlign: TextAlign.justify,
          subtitle != null ? subtitle! : "",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: ColorConstant.DefRed,
                  fontSize: 23,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
