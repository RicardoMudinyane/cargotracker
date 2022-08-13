import 'package:cargotransport/constants.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
   MyAppBar({Key? key}) : super(key: key);

  double appBarHeight = 75;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: appBarHeight+60,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.grid_view_rounded),
            color: purple,
          ),
          Container(
            width: appBarHeight-20,
            height: appBarHeight-20,
            decoration: BoxDecoration(
              color: grey,
              borderRadius: BorderRadius.circular(18.0),
              image: const DecorationImage(
                image: AssetImage("assets/profile.png"),
                fit: BoxFit.fitHeight
              )
            ),

          ),
        ],
      ),
    );;
  }
}
