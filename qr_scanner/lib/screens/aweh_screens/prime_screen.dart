import 'package:flutter/material.dart';
import 'package:qr_scanner/models/constants.dart';
import 'package:qr_scanner/widgets/my_widgets.dart';

class AwehPrime extends StatelessWidget {
  const AwehPrime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg_color,
      appBar: MyAppBar.my_appbar,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ExtendedButton(
        button_text: 'Purchase Aweh Prime',
        navigator_url: '',
        my_icon: Icon(Icons.account_balance_wallet_rounded),
      ),
      body: MyAwehScreensNestedScrollView(title: 'AWEH PRIME',),
    );
  }
}
