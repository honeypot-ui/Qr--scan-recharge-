import 'package:flutter/material.dart';
import 'package:qr_scanner/screens/scanning.dart';


class MyColors{
  static Color appbar_bg_color = Color(0xff031737);
  static Color bg_color = Color(0xff0B0A0F); // 0xff0B0A0F
  static Color card_colors = Colors.grey.shade100;
}

class MyAppBar {
  static AppBar my_appbar = AppBar(
    title: Image.asset("assets/images/logo.png", height: 150,),
    centerTitle: true,
    backgroundColor: MyColors.appbar_bg_color,
  );
}

// class MyButtons {
//   static FloatingActionButton my_floating_button = FloatingActionButton.extended(
//     backgroundColor: MyColors.appbar_bg_color,
//     onPressed: () {
//
//     },
//     label: Text(
//       'Scan QR',
//       style: TextStyle(fontSize: 20),
//     ),
//     icon: const Icon(Icons.camera_alt_rounded),
//   );
//
//   static FloatingActionButton my_buy_button = FloatingActionButton.extended(
//     backgroundColor: MyColors.appbar_bg_color,
//     onPressed: () {
//
//     },
//     label: Text(
//       'Scan QR',
//       style: TextStyle(fontSize: 20),
//     ),
//     icon: const Icon(Icons.camera_alt_rounded),
//   );
// }

class MyItems {
  static double balance = 0;
}

class ExtendedButton extends StatelessWidget {

  final String navigator_url;
  final String button_text;
  final Icon my_icon;

  ExtendedButton({
    required this.navigator_url,
    required this.button_text,
    required this.my_icon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: MyColors.appbar_bg_color,
      onPressed: () {
        Navigator.pushNamed(context, '/$navigator_url');
      },
      label: Text(
        button_text,
        style: TextStyle(fontSize: 20),
      ),
      icon: my_icon,
    );
  }
}