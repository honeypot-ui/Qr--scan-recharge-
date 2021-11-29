import 'package:flutter/material.dart';
import 'package:qr_scanner/models/constants.dart';

class CallMeRequest extends StatelessWidget {
  const CallMeRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double container_width = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      backgroundColor: MyColors.bg_color,
      appBar: MyAppBar.my_appbar,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ExtendedButton(
        button_text: "Send CallMe Request",
        navigator_url: "",
        my_icon: Icon(Icons.phone),
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
                    SizedBox(height: 30,),
                    Text(
                      'CALLME REQUEST',
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
          padding: const EdgeInsets.only(top: 50),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    'ENTER CELLPHONE NUMBER',
                    style: TextStyle(
                      fontSize: 25,
                      color: MyColors.card_colors,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: container_width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        width: 1,
                        color: MyColors.card_colors,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: TextField(
                      cursorColor: MyColors.card_colors,
                      cursorWidth: 3,
                      style: TextStyle(
                        color: MyColors.card_colors,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: '081 234 5678',
                        hintStyle: TextStyle(
                          color: MyColors.card_colors,
                          fontSize: 20,
                        ),
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                      ),
                      onChanged: (value){},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
