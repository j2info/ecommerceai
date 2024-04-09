import 'package:ecommerceai/screen/responsive.dart';
import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/utils/font_constant/font_constant.dart';
import 'package:ecommerceai/utils/image_constant/image_constant.dart';
import 'package:ecommerceai/view/cart_screen/payment_responsive.dart';
import 'package:ecommerceai/view/cart_screen/payment_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyNowScreen extends StatefulWidget {
  const BuyNowScreen({super.key});

  @override
  State<BuyNowScreen> createState() => _BuyNowScreenState();
}

class _BuyNowScreenState extends State<BuyNowScreen> {
  List<String> Countries = [
    "State",
    "Palakkad",
    "Thrissur",
    "Trivandrum",
    "Kottayam"
  ];
  String dropDownValue = "State";
  List<String> Numbers = ["1", "2", "3", "4"];
  String dropDownItemValue = "1";
  int selectedIndex = 0;
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
          title: Text(
            "My Order",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(fontWeight: FontWeight.w600)),
          ),
        ),
        body: ResponsiveWidget(
          mobile: Stepper(
              controlsBuilder: (context, details) {
                if (selectedIndex == 0) {
                  return InkWell(
                    onTap: () {
                      final isLastStep = selectedIndex == getSteps().length - 1;
                      if (isLastStep) {
                        print("Completed");
                      } else {
                        setState(() {
                          selectedIndex += 1;
                        });
                      }
                    },
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                          color: ColorConstant.DefRed,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Deliver",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: ColorConstant.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20)),
                        ),
                      ),
                    ),
                  );
                } else {
                  return Container();
                }
              },
              connectorColor: MaterialStatePropertyAll(ColorConstant.DefRed),
              currentStep: selectedIndex,
              // onStepContinue: () {
              //   final isLastStep = selectedIndex == getSteps().length - 1;
              //   if (isLastStep) {
              //     print("Completed");
              //   } else {
              //     setState(() {
              //       selectedIndex += 1;
              //     });
              //   }
              // },
              onStepCancel: () {
                selectedIndex == 0
                    ? null
                    : setState(() {
                        selectedIndex -= 1;
                      });
              },
              connectorThickness: 2,
              type: StepperType.horizontal,
              steps: getSteps()),
          ////////////FOR TAB//////////////////
          tab: Stepper(
              controlsBuilder: (context, details) {
                if (selectedIndex == 0) {
                  return InkWell(
                    onTap: () {
                      final isLastStep = selectedIndex == getSteps().length - 1;
                      if (isLastStep) {
                        print("Completed");
                      } else {
                        setState(() {
                          selectedIndex += 1;
                        });
                      }
                    },
                    child: Container(
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                          color: ColorConstant.DefRed,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Deliver",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: ColorConstant.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20)),
                        ),
                      ),
                    ),
                  );
                } else {
                  return Container();
                }
              },
              connectorColor: MaterialStatePropertyAll(ColorConstant.DefRed),
              currentStep: selectedIndex,
              // onStepContinue: () {
              //   final isLastStep = selectedIndex == getSteps().length - 1;
              //   if (isLastStep) {
              //     print("Completed");
              //   } else {
              //     setState(() {
              //       selectedIndex += 1;
              //     });
              //   }
              // },
              onStepCancel: () {
                selectedIndex == 0
                    ? null
                    : setState(() {
                        selectedIndex -= 1;
                      });
              },
              connectorThickness: 2,
              type: StepperType.horizontal,
              steps: getTabSteps()),
        ));
  }

  List<Step> getSteps() => [
        Step(
            isActive: selectedIndex >= 0,
            title: Text(""),
            content: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Full Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Phone Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "House Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Road name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: "Pincode",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        child: Container(
                      height: 60,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstant.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: DropdownButton(
                          underline: Container(),
                          value: dropDownValue,
                          items: Countries.map<DropdownMenuItem<String>>(
                              (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              dropDownValue = value!;
                            });
                          },
                        ),
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: "City",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: "Landmark",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            label: Text("Address")),
        Step(
            isActive: selectedIndex >= 1,
            title: Text(" "),
            content: Column(
              children: [
                Material(
                  elevation: 8,
                  child: Container(
                    decoration: BoxDecoration(
                        color: ColorConstant.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 197, 194, 194))),
                    height: 150,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '''Address:  Broomhead M 73W ST 
                    Arcade Road, 007011''',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 17)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "   Order No: 678234",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Material(
                  elevation: 8,
                  child: Container(
                    decoration: BoxDecoration(
                        color: ColorConstant.white,
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstant.Black,
                          ),
                        ],
                        border: Border.all(
                            color: const Color.fromARGB(255, 197, 194, 194))),
                    height: 220,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          ///////////////////////////////////FOR IMAGE
                          height: 150,
                          width: 140,
                          color: ColorConstant.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Noise Smart Watch With Bluetooth Calling",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)),
                                  textAlign: TextAlign.justify,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    RatingBar.builder(
                                      unratedColor: Colors.grey,
                                      initialRating: 4,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      itemCount: 5,
                                      itemSize: 20,
                                      itemBuilder: (context, index) => Icon(
                                        Icons.star,
                                        color: ColorConstant.DefRed,
                                      ),
                                      onRatingUpdate: (index) {},
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "\$ 1,099",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  height: 30,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorConstant.DefRed)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Qty: ",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      DropdownButton(
                                        underline: Container(),
                                        value: dropDownItemValue,
                                        items: Numbers.map<
                                                DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (String? value) {
                                          setState(() {
                                            dropDownItemValue = value!;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Divider(
                  color: Color.fromARGB(255, 214, 212, 212),
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "\$1,099",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Price Details",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: ColorConstant.DefRed,
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          final isLastStep =
                              selectedIndex == getSteps().length - 1;
                          if (isLastStep) {
                            print("Completed");
                          } else {
                            setState(() {
                              selectedIndex += 1;
                            });
                          }
                        },
                        child: Container(
                          height: 40,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstant.DefRed),
                          child: Center(
                              child: Text(
                            "Continue",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 17,
                                    color: ColorConstant.white,
                                    fontWeight: FontWeight.bold)),
                          )),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            label: Text("Order Summary")),
        Step(
            isActive: selectedIndex >= 2,
            title: Text(""),
            content: Column(
              children: [
                Material(
                  elevation: 6,
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Total Amount", style: FontConstant.defFont),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: ColorConstant.DefRed,
                                size: 30,
                              )
                            ],
                          ),
                          Text(
                            "\$1,099",
                            style: FontConstant.defFont,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 440,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 234, 229, 229),
                      border: Border.all(color: Colors.grey, width: 3)),
                  child: Column(
                    children: [
                      PaymentWidget(
                        icon: Icon(
                          Icons.phone_iphone_sharp,
                          size: 50,
                          color: ColorConstant.Black,
                        ),
                        title: "UPI",
                        subtitle: "Pay by any UPI app",
                      ),
                      Divider(),
                      PaymentWidget(
                        icon: Icon(
                          Icons.security_outlined,
                          size: 50,
                          color: ColorConstant.Black,
                        ),
                        title: "Credit/Debit/ATM Card",
                        subtitle: "10% Cashback on HDFC bank card",
                      ),
                      Divider(),
                      PaymentWidget(
                        icon: Icon(
                          Icons.other_houses_outlined,
                          size: 50,
                          color: ColorConstant.Black,
                        ),
                        title: "Net Banking",
                      ),
                      Divider(),
                      PaymentWidget(
                        icon: Icon(
                          Icons.money,
                          size: 50,
                          color: ColorConstant.Black,
                        ),
                        title: "Cash On Delivery",
                      ),
                      Divider(),
                      PaymentWidget(
                        icon: Icon(
                          Icons.wallet_rounded,
                          size: 50,
                          color: ColorConstant.Black,
                        ),
                        title: "Wallet",
                      ),
                    ],
                  ),
                )
              ],
            ),
            label: Text("Payment")),
      ];

  ////////GET STEPS FOR TAB

  List<Step> getTabSteps() => [
        Step(
            isActive: selectedIndex >= 0,
            title: Text(""),
            content: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Full Name",
                      hintStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Phone Number",
                      hintStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "House Number",
                      hintStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Road name",
                      hintStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: "Pincode",
                              hintStyle: TextStyle(fontSize: 20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        child: Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstant.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: DropdownButton(
                          iconSize: 30,
                          underline: Container(),
                          value: dropDownValue,
                          items: Countries.map<DropdownMenuItem<String>>(
                              (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(fontSize: 22),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              dropDownValue = value!;
                            });
                          },
                        ),
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: "City",
                              hintStyle: TextStyle(fontSize: 20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: "Landmark",
                              hintStyle: TextStyle(fontSize: 20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            label: Text("Address")),
        Step(
            isActive: selectedIndex >= 1,
            title: Text(" "),
            content: Column(
              children: [
                Material(
                  elevation: 8,
                  child: Container(
                    decoration: BoxDecoration(
                        color: ColorConstant.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 197, 194, 194))),
                    height: 250,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '''Address:  Broomhead M 73W ST 
                    Arcade Road, 007011''',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 25)),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Order No: 678234",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 25)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Material(
                  elevation: 8,
                  child: Container(
                    decoration: BoxDecoration(
                        color: ColorConstant.white,
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstant.Black,
                          ),
                        ],
                        border: Border.all(
                            color: const Color.fromARGB(255, 197, 194, 194))),
                    height: 320,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          ///////////////////////////////////FOR IMAGE
                          height: 300,
                          width: 350,
                          decoration: BoxDecoration(
                              color: ColorConstant.white,
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.CommonImage),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          color: Colors.transparent,
                          height: 250,
                          width: 360,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Noise Smart Watch With Bluetooth Calling",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w600)),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RatingBar.builder(
                                    unratedColor: Colors.grey,
                                    initialRating: 4,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    itemCount: 5,
                                    itemSize: 35,
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star,
                                      color: ColorConstant.DefRed,
                                    ),
                                    onRatingUpdate: (index) {},
                                  ),
                                  // SizedBox(
                                  //   width: 4,
                                  // ),
                                  Text(
                                    "\$ 1,099",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600)),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 70,
                                width: 110,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: ColorConstant.DefRed, width: 2)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Qty: ",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    DropdownButton(
                                      iconSize: 30,
                                      underline: Container(),
                                      value: dropDownItemValue,
                                      items:
                                          Numbers.map<DropdownMenuItem<String>>(
                                              (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(
                                            value,
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (String? value) {
                                        setState(() {
                                          dropDownItemValue = value!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Divider(
                  color: Color.fromARGB(255, 214, 212, 212),
                  thickness: 2,
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "\$1,099",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 30,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Price Details",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: ColorConstant.DefRed,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          final isLastStep =
                              selectedIndex == getSteps().length - 1;
                          if (isLastStep) {
                            print("Completed");
                          } else {
                            setState(() {
                              selectedIndex += 1;
                            });
                          }
                        },
                        child: Container(
                          height: 70,
                          width: 230,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstant.DefRed),
                          child: Center(
                              child: Text(
                            "Continue",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 23,
                                    color: ColorConstant.white,
                                    fontWeight: FontWeight.bold)),
                          )),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            label: Text("Order Summary")),
        Step(
            isActive: selectedIndex >= 2,
            title: Text(""),
            content: Column(
              children: [
                Material(
                  elevation: 6,
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Total Amount",
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w700))),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: ColorConstant.DefRed,
                                size: 50,
                              )
                            ],
                          ),
                          Text(
                            "\$1,099",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w700)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  height: 688,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 234, 229, 229),
                      border: Border.all(color: Colors.grey, width: 3)),
                  child: Column(
                    children: [
                      PaymentResponsiveWidget(
                        icon: Icon(
                          Icons.phone_iphone_sharp,
                          size: 50,
                          color: ColorConstant.Black,
                        ),
                        title: "UPI",
                        subtitle: "Pay by any UPI app",
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      PaymentResponsiveWidget(
                        icon: Icon(
                          Icons.security_outlined,
                          size: 50,
                          color: ColorConstant.Black,
                        ),
                        title: "Credit/Debit/ATM Card",
                        subtitle: "10% Cashback on HDFC bank card",
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      PaymentResponsiveWidget(
                        icon: Icon(
                          Icons.other_houses_outlined,
                          size: 50,
                          color: ColorConstant.Black,
                        ),
                        title: "Net Banking",
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      PaymentResponsiveWidget(
                        icon: Icon(
                          Icons.money,
                          size: 50,
                          color: ColorConstant.Black,
                        ),
                        title: "Cash On Delivery",
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      PaymentResponsiveWidget(
                        icon: Icon(
                          Icons.wallet_rounded,
                          size: 50,
                          color: ColorConstant.Black,
                        ),
                        title: "Wallet",
                      ),
                    ],
                  ),
                )
              ],
            ),
            label: Text("Payment")),
      ];
}
