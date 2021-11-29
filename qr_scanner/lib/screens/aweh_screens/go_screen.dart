import 'package:flutter/material.dart';
import 'package:qr_scanner/models/constants.dart';
import 'package:qr_scanner/widgets/my_widgets.dart';

class AwehGo extends StatelessWidget {
  const AwehGo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bg_color,
      appBar: MyAppBar.my_appbar,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ExtendedButton(
        button_text: 'Purchase Aweh Go',
        navigator_url: '',
        my_icon: Icon(Icons.account_balance_wallet_rounded),
      ),
      body: MyAwehScreensNestedScrollView(title: 'AWEH GO',),
    );
  }
}
