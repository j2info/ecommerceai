import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResponsiveCategoryWidget extends StatelessWidget {
  const ResponsiveCategoryWidget(
      {super.key,
      required this.color,
      required this.product1,
      required this.product2,
      required this.product3,
      required this.product4,
      required this.categoryName,
      required this.isSelected,
      required this.onTap});
  final Color color;
  final String product1;
  final String product2;
  final String product3;
  final String product4;
  final String categoryName;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children to the top
          children: [
            Container(
              height: 200,
              width: 260,
              color: color,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      categoryName,
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
            if (isSelected)
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: Text(product1, style: TextStyle(fontSize: 20)),
                      onTap: () {
                        // Handle tap on product 1
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text(product2, style: TextStyle(fontSize: 20)),
                      onTap: () {
                        // Handle tap on product 2
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text(product3, style: TextStyle(fontSize: 20)),
                      onTap: () {
                        // Handle tap on product 3
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text(product4, style: TextStyle(fontSize: 20)),
                      onTap: () {
                        // Handle tap on product 4
                      },
                    ),
                    Divider(),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
