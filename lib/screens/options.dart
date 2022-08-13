import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final double boxWidth;
  final Color boxColor;
  final Color textColor;
  final IconData iconData;
  final String upperText;
  final String lowerText;
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        width: boxWidth,
        height: height*.28,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  iconData,
                  color: textColor,
                ),
                const SizedBox(height: 8),
                Text(
                  upperText,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
              ],
            ),
            Text(
              lowerText,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: textColor.withOpacity(.8),
              ),
            ),
          ],
        ),
      ),
    );
  }

  const Options({
    Key? key,
    required this.boxColor,
    required this.textColor,
    required this.boxWidth,
    required this.iconData,
    required this.upperText,
    required this.lowerText,
  }) : super(key: key);
}