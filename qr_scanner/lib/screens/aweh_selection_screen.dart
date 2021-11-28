import 'package:flutter/material.dart';
import 'package:qr_scanner/animation/FadeAnimation.dart';
import 'package:qr_scanner/models/aweh.dart';
import 'package:qr_scanner/screens/scanning.dart';

class SelectAweh extends StatefulWidget {
  const SelectAweh({Key? key}) : super(key: key);

  @override
  _SelectAwehState createState() => _SelectAwehState();
}

class _SelectAwehState extends State<SelectAweh> {

  List<Aweh> aweh = [
    Aweh("Aweh O-Yeah", "assets/images/o_yeah.png"),
    Aweh("Aweh Oka", "assets/images/go.png"),
    Aweh("Aweh Go", "assets/images/go.png"),
    Aweh("Aweh Prime", "assets/images/prime.png"),
    Aweh("Aweh Gig", "assets/images/o_yeah.png"),
    Aweh("Aweh Super", "assets/images/super.png"),
  ];

  int selectedAweh = -1;
  double amount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/logo.png", height: 150,),
        centerTitle: true,
        backgroundColor: Color(0xff031737),
      ),
      backgroundColor: Color(0xff0B0A0F),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xff031737),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Scanning(),
            ),
          );
        },
        label: Text(
          'Scan QR',
          style: TextStyle(fontSize: 20),
        ),
        icon: const Icon(Icons.zoom_in),
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
                        color: Colors.grey.shade100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "Balance: $amount\n",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade100,
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
          if (selectedAweh == index){
            selectedAweh = -1;
          }
          else {
            selectedAweh = index;
          }
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
