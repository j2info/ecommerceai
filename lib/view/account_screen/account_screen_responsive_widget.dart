import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountResponsiveWidget extends StatelessWidget {
  const AccountResponsiveWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      this.onTap});
  final String title;
  final String subtitle;
  final Icon icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      color: ColorConstant.defGrey,
      child: Center(
        child: ListTile(
          onTap: onTap,
          tileColor: ColorConstant.defGrey,
          title: Text(
            title,
            style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
          ),
          subtitle: Text(
            subtitle,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: ColorConstant.grey)),
          ),
          leading: icon,
        ),
      ),
    );
  }
}
