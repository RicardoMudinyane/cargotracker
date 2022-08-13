import 'package:cargotransport/constants.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "track your",
            style: TextStyle(
                color: purple,
                fontSize: 50,
                fontWeight: FontWeight.w500
            ),
          ),
          Stack(
            alignment: Alignment.centerLeft,
            children: <Widget>[
              Text(
                'cargo.',
                style: TextStyle(
                  fontSize: 50,
                  // color: Colors.white,
                  fontWeight: FontWeight.w500,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 3
                    ..color = purple,
                ),
              ),
              const Text(
                'cargo.',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}
