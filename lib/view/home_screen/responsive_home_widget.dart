import 'package:ecommerceai/utils/color_constant/color_constant.dart';
import 'package:flutter/material.dart';

class ResponsiveHomeWidget extends StatelessWidget {
  const ResponsiveHomeWidget({super.key, this.onTap, required this.title});
  final void Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          mainAxisExtent: 200,
        ),
        itemBuilder: (context, index) => InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(color: ColorConstant.white, boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 2,
              )
            ]),
            height: 200,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title + "$index",
                    style: TextStyle(
                      fontSize: 25,
                      color: ColorConstant.Black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
