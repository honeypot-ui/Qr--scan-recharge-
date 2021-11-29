import 'package:flutter/material.dart';
import 'package:qr_scanner/models/constants.dart';


class MyAwehScreensNestedScrollView extends StatelessWidget {
  final String title;
  MyAwehScreensNestedScrollView({
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
        return <Widget>[
          SliverToBoxAdapter(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "Balance: ${MyItems.balance}",
                        style: TextStyle(
                          fontSize: 20,
                          color: MyColors.card_colors,
                          fontWeight: FontWeight.w400,
                        ),
                        // children: [
                        //   TextSpan(
                        //     text: "Free Minutes: \n",
                        //   ),
                        //   TextSpan(
                        //     text: "Free SMS: ",
                        //   ),
                        // ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 35,
                      color: MyColors.card_colors,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ];
      },
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "Free Data: \n",
                style: TextStyle(
                  fontSize: 20,
                  color: MyColors.card_colors,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                    text: "Free Social Media Data: \n",
                  ),
                  TextSpan(
                    text: "Free Minutes: \n",
                  ),
                  TextSpan(
                    text: "Free SMS: ",
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}