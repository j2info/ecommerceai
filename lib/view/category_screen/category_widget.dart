import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:ecommerceai/utils/font_constant/font_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryScreenWidget extends StatelessWidget {
  const CategoryScreenWidget(
      {super.key,
      required this.color,
      required this.product1,
      required this.product2,
      required this.product3,
      required this.product4,
      required this.categoryName});
  final Color color;
  final String product1;
  final String product2;
  final String product3;
  final String product4;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Builder(
            builder: (context) => InkWell(
              onTap: () {
                final RenderBox renderBox =
                    context.findRenderObject() as RenderBox;
                final position = renderBox.localToGlobal(Offset.zero);
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(
                    position.dx,
                    position.dy + renderBox.size.height,
                    0,
                    0,
                  ), // Adjust position as needed
                  items: [
                    PopupMenuItem(
                      child: Container(
                          height: 70,
                          width: 200,
                          child: Text(
                            product1,
                            style: FontConstant.defSmallFont,
                          )),
                      value: 'option1',
                    ),
                    PopupMenuItem(
                      child: Container(
                          height: 70,
                          width: 200,
                          child: Text(
                            product2,
                            style: FontConstant.defSmallFont,
                          )),
                      value: 'option2',
                    ),
                    PopupMenuItem(
                      child: Container(
                          height: 70,
                          width: 200,
                          child: Text(
                            product3,
                            style: FontConstant.defSmallFont,
                          )),
                      value: 'option1',
                    ),
                    PopupMenuItem(
                      child: Container(
                          height: 70,
                          width: 200,
                          child: Text(
                            product4,
                            style: FontConstant.defSmallFont,
                          )),
                      value: 'option1',
                    ),
                  ],
                );
              },
              child: Container(
                height: 125,
                width: 160,
                color: color,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        categoryName,
                        style: FontConstant.defSmallFont,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
