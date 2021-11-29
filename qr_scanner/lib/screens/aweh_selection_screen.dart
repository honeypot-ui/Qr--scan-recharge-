import 'package:flutter/material.dart';
import 'package:qr_scanner/animation/FadeAnimation.dart';
import 'package:qr_scanner/models/aweh.dart';
import 'package:qr_scanner/models/constants.dart';
import 'package:qr_scanner/screens/scanning.dart';

class SelectAweh extends StatefulWidget {
  const SelectAweh({Key? key}) : super(key: key);

  @override
  _SelectAwehState createState() => _SelectAwehState();
}

class _SelectAwehState extends State<SelectAweh> {

  List<Aweh> aweh = [
    Aweh("Aweh O-Yeah", "assets/images/o_yeah.png"),
    Aweh("Aweh Oka", "assets/images/oka.png"),
    Aweh("Aweh Go", "assets/images/go.png"),
    Aweh("Aweh Prime", "assets/images/prime.png"),
    Aweh("Aweh Gig", "assets/images/gig.png"),
    Aweh("Aweh Super", "assets/images/super.png"),
  ];

  List<AwehScreens> navigators = [
    AwehScreens('o_yeah'),
    AwehScreens('oka'),
    AwehScreens('go'),
    AwehScreens('prime'),
    AwehScreens('gig'),
    AwehScreens('super')
  ];

  int selectedAweh = -1;
  double amount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.my_appbar,
      backgroundColor: MyColors.bg_color,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ExtendedButton(
        navigator_url: 'qr_scan',
        button_text: 'Scan QR',
        my_icon: Icon(Icons.camera_alt_rounded),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            SliverToBoxAdapter(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Select Aweh",
                      style: TextStyle(
                        fontSize: 35,
                        color: MyColors.card_colors,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    RichText(
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
                  ],
                ),
              ),
            ),
          ];
        },
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.0,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: aweh.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FadeAnimation(
                          awehContainer(aweh[index].imageURL, aweh[index].name, index), (1.0 + index) / 4);
                    },
                  )
              )
            ],
          ),
        ),
      ),
    );
  }

  awehContainer(String image, String name, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedAweh = index;
          Navigator.pushNamed(context, '/${navigators[index].navigators}');
          // if (selectedAweh == index){
          //   // selectedAweh = -1;
          //   selectedAweh = index;
          //   Navigator.pushNamed(context, '/${navigators[index].navigators}');
          // }
          // else {
          //   selectedAweh = index;
          // }
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: selectedAweh == index ? Colors.blue.shade50 : Colors.grey.shade100,
          border: Border.all(
            color: selectedAweh == index ? Colors.blue : Colors.blue.withOpacity(0),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, height: 80,),
            SizedBox(height: 20,),
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                name,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
