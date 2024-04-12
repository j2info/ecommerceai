import 'package:ecommerceai/screen/responsive.dart';
import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/view/account_screen/account_screen_responsive_widget.dart';
import 'package:ecommerceai/view/account_screen/account_screen_widget.dart';
import 'package:ecommerceai/view/orders_screen/orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
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
                  "Account",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontWeight: FontWeight.w600)),
                )
              : Text(
                  "Account",
                  style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600)),
                ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: MediaQuery.of(context).size.width < 600
                    ? Icon(
                        Icons.chat_rounded,
                        color: ColorConstant.Black,
                        size: 30,
                      )
                    : Icon(
                        Icons.chat_rounded,
                        color: ColorConstant.Black,
                        size: 50,
                      ))
          ],
        ),
        body: ResponsiveWidget(
          mobile: Column(
            children: [
              Container(
                height: 100,
                color: ColorConstant.defGrey,
                child: Center(
                  child: ListTile(
                    tileColor: ColorConstant.defGrey,
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      radius: 50,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.blue,
                      ),
                    ),
                    title: Text(
                      "Ashwin",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600)),
                    ),
                    subtitle: Text(
                      "9045678906",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: ColorConstant.grey)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                    color: ColorConstant.defGrey,
                    border: Border.all(color: ColorConstant.lightGrey)),
                child: Column(
                  children: [
                    AccountScreenWidget(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OrdersScreen(),
                            ));
                      },
                      title: "Orders",
                      subtitle: "Check Your order status",
                      icon: Icon(
                        Icons.all_inbox,
                        size: 50,
                      ),
                    ),
                    Divider(),
                    AccountScreenWidget(
                      title: "Wishlist",
                      subtitle: "Check items in your wishlist",
                      icon: Icon(
                        Icons.favorite,
                        size: 50,
                      ),
                    ),
                    Divider(),
                    AccountScreenWidget(
                      title: "Account",
                      subtitle: "Edit your profile",
                      icon: Icon(
                        Icons.account_circle,
                        size: 50,
                      ),
                    ),
                    Divider(),
                    AccountScreenWidget(
                      title: "Password",
                      subtitle: "Change Your password",
                      icon: Icon(
                        Icons.lock_outline,
                        size: 50,
                      ),
                    ),
                    Divider(),
                    AccountScreenWidget(
                      title: "Logout",
                      subtitle: "Logout from your profile",
                      icon: Icon(
                        Icons.logout,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          //////////////FOR TAB//////////
          tab: Column(
            children: [
              Container(
                height: 150,
                color: ColorConstant.defGrey,
                child: Center(
                  child: ListTile(
                    tileColor: ColorConstant.defGrey,
                    leading: Transform.scale(
                      scale: 1.5, // Adjust the scale factor as needed
                      child: CircleAvatar(
                        radius: 70,
                        child: Icon(
                          Icons.person, // Your icon
                          size: 50, // Adjust the size of the icon as needed
                          color: Colors
                              .blue, // Adjust the color of the icon as needed
                        ),
                      ),
                    ),
                    title: Text(
                      "Ashwin",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600)),
                    ),
                    subtitle: Text(
                      "9045678906",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: ColorConstant.grey)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                decoration: BoxDecoration(
                    color: ColorConstant.defGrey,
                    border: Border.all(color: ColorConstant.lightGrey)),
                child: Column(
                  children: [
                    AccountResponsiveWidget(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OrdersScreen(),
                            ));
                      },
                      title: "Orders",
                      subtitle: "Check Your order status",
                      icon: Icon(
                        Icons.all_inbox,
                        size: 50,
                      ),
                    ),
                    Divider(),
                    AccountResponsiveWidget(
                      title: "Wishlist",
                      subtitle: "Check items in your wishlist",
                      icon: Icon(
                        Icons.favorite,
                        size: 50,
                      ),
                    ),
                    Divider(),
                    AccountResponsiveWidget(
                      title: "Account",
                      subtitle: "Edit your profile",
                      icon: Icon(
                        Icons.account_circle,
                        size: 50,
                      ),
                    ),
                    AccountResponsiveWidget(
                      title: "Password",
                      subtitle: "Change Your password",
                      icon: Icon(
                        Icons.lock_outline,
                        size: 50,
                      ),
                    ),
                    Divider(),
                    AccountResponsiveWidget(
                      title: "Logout",
                      subtitle: "Logout from your profile",
                      icon: Icon(
                        Icons.logout,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
