import 'package:ecommerceai/screen/responsive.dart';
import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/utils/font_constant/font_constant.dart';
import 'package:ecommerceai/utils/image_constant/image_constant.dart';
import 'package:ecommerceai/view/cart_screen/buy_now.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  int currentStep = 0;

  continueStep() {
    if (currentStep < 2) {
      setState(() {
        currentStep = currentStep + 1;
      });
      print("Current step incremented to: $currentStep");
    } else if (currentStep >= 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuyNowScreen()),
      );
    }
  }

  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep = currentStep - 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          centerTitle: true,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: MediaQuery.of(context).size.width < 600
                  ? Icon(
                      Icons.arrow_back_ios,
                      color: ColorConstant.Black,
                      size: 30,
                    )
                  : Icon(
                      Icons.arrow_back_ios,
                      size: 40,
                      color: ColorConstant.Black,
                    )),
          title: MediaQuery.of(context).size.width < 600
              ? Text(
                  "Order Details",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontWeight: FontWeight.w600)),
                )
              : Text(
                  "Order Details",
                  style: GoogleFonts.poppins(
                      textStyle:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600)),
                ),
        ),
        body: ResponsiveWidget(
          mobile: SingleChildScrollView(
            child: Column(
              children: [
                Material(
                  elevation: 8,
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConstant.lightGrey)),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order No : 678234",
                            style: FontConstant.defFont,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Material(
                  elevation: 8,
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConstant.lightGrey)),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 150,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Noise Smart Watch With Bluetooth Calling",
                                      textAlign: TextAlign.justify,
                                      style: FontConstant.defFont,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Seller: Noise",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              color: ColorConstant.grey,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "\$1099",
                                      style: FontConstant.defFont,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 150,
                                width: 145,
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ImageConstant.CommonImage),
                                        fit: BoxFit.cover)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Stepper(
                      controlsBuilder: (context, details,
                          {VoidCallback? onStepContinue,
                          VoidCallback? onStepCancel}) {
                        return Row(
                          children: [
                            InkWell(
                              onTap: () {
                                final isLastStep =
                                    currentStep == getSteps().length - 1;
                                if (isLastStep) {
                                  print("Completed");
                                } else {
                                  setState(() {
                                    currentStep += 1;
                                  });
                                }
                              },
                              child: Container(
                                height: 50,
                                width: 70,
                                color: Colors.transparent,
                                child: Text(
                                  "Continue",
                                  style: TextStyle(color: ColorConstant.DefRed),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                currentStep == 0
                                    ? null
                                    : setState(() {
                                        currentStep -= 1;
                                      });
                              },
                              child: Container(
                                height: 50,
                                width: 70,
                                color: Colors.transparent,
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(color: ColorConstant.Black),
                                ),
                              ),
                            )
                          ],
                        );
                      },
                      connectorColor:
                          MaterialStatePropertyAll(ColorConstant.DefRed),
                      currentStep: currentStep,
                      steps: getSteps()),
                )
              ],
            ),
          ),
          /////////////////////FOR TAB////////////////
          tab: SingleChildScrollView(
            child: Column(
              children: [
                Material(
                  elevation: 8,
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConstant.lightGrey)),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Order No : 678234",
                            style: FontConstant.defTabFont,
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
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConstant.lightGrey)),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 350,
                                width: 450,
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Noise Smart Watch With Bluetooth Calling",
                                        textAlign: TextAlign.justify,
                                        style: FontConstant.defTabFont,
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Text(
                                        "Seller: Noise",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                color: ColorConstant.grey,
                                                fontSize: 25,
                                                fontWeight: FontWeight.w500)),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Text(
                                        "\$1099",
                                        style: FontConstant.defTabFont,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                height: 320,
                                width: 280,
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  image: DecorationImage(
                                      image:
                                          AssetImage(ImageConstant.CommonImage),
                                      fit: BoxFit.cover),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  child: SizedBox(
                    height: 400,
                    width: double.infinity,
                    child: Stepper(
                        controlsBuilder: (context, details,
                            {VoidCallback? onStepContinue,
                            VoidCallback? onStepCancel}) {
                          return Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  final isLastStep =
                                      currentStep == getSteps().length - 1;
                                  if (isLastStep) {
                                    print("Completed");
                                  } else {
                                    setState(() {
                                      currentStep += 1;
                                    });
                                  }
                                },
                                child: Container(
                                  height: 100,
                                  width: 140,
                                  color: Colors.transparent,
                                  child: Text(
                                    "Continue",
                                    style: TextStyle(
                                        color: ColorConstant.DefRed,
                                        fontSize: 23),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  currentStep == 0
                                      ? null
                                      : setState(() {
                                          currentStep -= 1;
                                        });
                                },
                                child: Container(
                                  height: 100,
                                  width: 140,
                                  color: Colors.transparent,
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(
                                        color: ColorConstant.Black,
                                        fontSize: 23),
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                        connectorColor:
                            MaterialStatePropertyAll(ColorConstant.DefRed),
                        currentStep: currentStep,
                        steps: getTabSteps()),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  List<Step> getSteps() => [
        Step(
          title: Text(
            "Step 1",
          ),
          content: Text("This is Step 1"),
        ),
        Step(
          title: Text("Step 2"),
          content: Text("This is step 2"),
        ),
        Step(
          title: Text("Step 3"),
          content: Text("This is step 3"),
        ),
      ];
  List<Step> getTabSteps() => [
        Step(
          title: Text(
            "Step 1",
            style: TextStyle(color: ColorConstant.Black, fontSize: 25),
          ),
          content: Text(
            "This is Step 1",
            style: TextStyle(color: ColorConstant.Black, fontSize: 25),
          ),
        ),
        Step(
          title: Text(
            "Step 2",
            style: TextStyle(color: ColorConstant.Black, fontSize: 25),
          ),
          content: Text(
            "This is step 2",
            style: TextStyle(color: ColorConstant.Black, fontSize: 25),
          ),
        ),
        Step(
          title: Text(
            "Step 3",
            style: TextStyle(color: ColorConstant.Black, fontSize: 25),
          ),
          content: Text(
            "This is step 3",
            style: TextStyle(color: ColorConstant.Black, fontSize: 25),
          ),
        ),
      ];
}
