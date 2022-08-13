import 'package:cargotransport/animate_text.dart';
import 'package:cargotransport/main.dart';
import 'package:cargotransport/screens/boxes.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'app_bar.dart';
import 'home_text.dart';
import 'options.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  int delayAmount = 1000;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        alignment: Alignment.centerLeft,
        child: Column(
          children: [
            MyAppBar(),
            MyText(),
            const SizedBox(height: 8),
            ShowUp(
                delay: delayAmount,
                child: Container(
                  width: width,
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 38),
                  child: Text(
                    'best way to ship your \norder to mars.',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: purple.withOpacity(.8),
                    ),
                  ),
                )
            ),
            const SizedBox(height: 30),

            Container(
              width: width,
              padding: const EdgeInsets.all(2),
              height: height*.21,
              color: Colors.white,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5).copyWith(
                      left: 30
                    ),
                    child: Container(
                      height: height*.28,
                      width: width*.15,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(width: 1.5, color: grey)
                      ),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Row(
                          children: [
                            const SizedBox(width: 5),
                            Icon(
                              Icons.change_history_rounded,
                              color: blue,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'track order',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Options(
                    boxWidth: width*.26,
                    boxColor: grey,
                    upperText: 'pick up',
                    lowerText: 'free',
                    iconData: Icons.view_in_ar_rounded,
                    textColor: purple,
                  ),
                  Options(
                    boxWidth: width*.26,
                    boxColor: purple,
                    upperText: 'support',
                    lowerText: '24/7',
                    iconData: Icons.support_agent_rounded,
                    textColor: blue,
                  ),
                  Options(
                    boxWidth: width*.26,
                    boxColor: grey,
                    upperText: 'ratings',
                    lowerText: '\$260',
                    iconData: Icons.show_chart_rounded,
                    textColor: purple,
                  ),
                ],
              ),
            ),
            Container(
              width: width,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 38).copyWith(
                top: 20
              ),
              child: Text(
                'quick delivery ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: purple,
                ),
              ),
            ),

            Container(
                width: width,
                height: height*.25,
                color: Colors.white,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 2).copyWith(top: 20),
                child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 36),
                        child: Boxes(
                          boxColor: blue,
                          textColor: purple,
                          textKG: "20 kg",
                          textName: 'sm box',
                          pRight: -width*.1,
                          pTop: -width*.05,
                          pBottom: 20,
                          pLeft: 15,
                        ),
                      ),
                      Boxes(
                        boxColor: grey,
                        textColor: purple,
                        textKG: "48 kg",
                        textName: 'med box',
                        pRight: -width*.1,
                        pTop: height*.1,
                        pLeft: 15,
                        pBottom: height*.2-30,
                      ),
                      Boxes(
                        boxColor: grey,
                        textColor: purple,
                        textKG: "65 kg",
                        textName: 'big box',
                        pRight: -width*.1,
                        pTop: height*.1,
                        pLeft: 15,
                        pBottom: height*.2-30,
                      ),
                    ]
                )
            ),

          ],
        ),
      )

    );
  }
}