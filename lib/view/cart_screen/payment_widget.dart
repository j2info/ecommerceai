import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/utils/font_constant/font_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
  });
  final Icon icon;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        textAlign: TextAlign.justify,
        title,
        style: FontConstant.defFont,
      ),
      subtitle: Text(
        textAlign: TextAlign.justify,
        subtitle != null ? subtitle! : "",
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: ColorConstant.DefRed,
                fontSize: 15,
                fontWeight: FontWeight.w600)),
      ),
    );
  }
}
