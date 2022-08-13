import 'package:flutter/material.dart';

import '../constants.dart';

class Boxes extends StatelessWidget {
  final Color boxColor;
  final Color textColor;
  final String textKG;
  final String textName;
  final double pLeft;
  final double pRight;
  final double pTop;
  final double pBottom;
  const Boxes({
    Key? key,
    required this.boxColor,
    required this.textColor,
    required this.textKG,
    required this.textName,
    required this.pBottom,
    required this.pTop,
    required this.pLeft,
    required this.pRight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Container(
          width: width*.32,
          height: height*.25,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Stack(
            children: [
              Positioned(
                right: pRight,
                top: pTop,
                child: ClipRRect(
                  // clipBehavior: Clip.antiAlias,
                  borderRadius: BorderRadius.circular(12),
                  child:Image.asset(
                    height: width*.35,
                    width: width*.35,
                    "assets/box.png",
                  ),
                ),
              ),

              Positioned(
                  bottom: pBottom,
                  left: pLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textName,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: textColor,
                        ),
                      ),
                      const SizedBox(height: 2.5),
                      Text(
                        textKG,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: textColor,
                        ),
                      ),
                    ],
                  )
              ),

            ],
          ),
        )
    );
  }
}
