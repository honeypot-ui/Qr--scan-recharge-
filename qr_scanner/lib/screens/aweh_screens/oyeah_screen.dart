import 'package:flutter/material.dart';
import 'package:qr_scanner/models/constants.dart';
import 'package:qr_scanner/widgets/my_widgets.dart';

class AwehOYeah extends StatelessWidget {
  const AwehOYeah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg_color,
      appBar: MyAppBar.my_appbar,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ExtendedButton(
        button_text: 'Purchase Aweh O-Yeah',
        navigator_url: '',
        my_icon: Icon(Icons.account_balance_wallet_rounded),
      ),
      body: MyAwehScreensNestedScrollView(title: 'AWEH O-YEAH',),
    );
  }
}
