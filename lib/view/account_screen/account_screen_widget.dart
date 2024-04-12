import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreenWidget extends StatelessWidget {
  const AccountScreenWidget(
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
    return ListTile(
      onTap: onTap,
      tileColor: ColorConstant.defGrey,
      title: Text(
        title,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.w500)),
      ),
      subtitle: Text(
        subtitle,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: ColorConstant.grey)),
      ),
      leading: icon,
    );
  }
}
