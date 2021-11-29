import 'package:flutter/material.dart';
import 'package:qr_scanner/screens/aweh_screens/gig_screen.dart';
import 'package:qr_scanner/screens/aweh_screens/go_screen.dart';
import 'package:qr_scanner/screens/aweh_screens/oka_screen.dart';
import 'package:qr_scanner/screens/aweh_screens/oyeah_screen.dart';
import 'package:qr_scanner/screens/aweh_screens/prime_screen.dart';
import 'package:qr_scanner/screens/aweh_screens/super_screen.dart';
import 'package:qr_scanner/screens/aweh_selection_screen.dart';
import 'package:qr_scanner/screens/callme_request.dart';
import 'package:qr_scanner/screens/home_page.dart';
import 'package:qr_scanner/screens/recharge.dart';
import 'package:qr_scanner/screens/scanning.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Scanner',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/select_aweh': (context) => const SelectAweh(),
        '/qr_scan': (context) => const Scanning(),
        '/o_yeah': (context) => const AwehOYeah(),
        '/oka': (context) => const AwehOka(),
        '/go': (context) => const AwehGo(),
        '/prime': (context) => const AwehPrime(),
        '/gig': (context) => const AwehGig(),
        '/super': (context) => const AwehSuper(),
        '/recharge': (context) => const RechargePage(),
        '/callme': (context) => const CallMeRequest(),
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),
    );
  }
}

