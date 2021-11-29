import 'package:flutter/material.dart';
import 'package:qr_scanner/models/constants.dart';
import 'package:qr_scanner/screens/scanning.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final double sized_boxed_height = 35;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg_color,
      appBar: MyAppBar.my_appbar,
      floatingActionButton: ExtendedButton(
        button_text: "Scan QR",
        navigator_url: "qr_scan",
        my_icon: Icon(Icons.camera_alt_rounded),
      ),
      body: NestedScrollView(
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
                  ],
                ),
              ),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HomeButtons("Recharge", "recharge"),
              SizedBox(height: sized_boxed_height,),
              HomeButtons("Buy Aweh", 'select_aweh'),
              SizedBox(height: sized_boxed_height,),
              HomeButtons("Send CallMe Request", "callme"),

            ],
          ),
        ),
      ),
    );
  }
}



class HomeButtons extends StatelessWidget {

  final String my_text;
  final String my_url;

  const HomeButtons(this.my_text, this.my_url);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/$my_url');
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: MyColors.card_colors,
          // border: Border.all(
          //   color: selectedAweh == index ? Colors.blue : Colors.blue.withOpacity(0),
          //   width: 2.0,
          // ),
          borderRadius: BorderRadius.circular(25.0),
        ),
        width: MediaQuery.of(context).size.width * 0.85,
        height: 100,
        child: Center(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              my_text,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
