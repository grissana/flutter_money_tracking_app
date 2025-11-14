import 'package:flutter/material.dart';
// import 'package:flutter_money_tracking_app/views/splashscreenui.dart';
import 'package:flutter_money_tracking_app/views/welcomui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    FlutterMoneyTrackingApp(),
  );
}

//-----------------------------------------------------------------------------------------------
class FlutterMoneyTrackingApp extends StatefulWidget {
  const FlutterMoneyTrackingApp({super.key});

  @override
  State<FlutterMoneyTrackingApp> createState() =>
      _FlutterMoneyTrackingAppState();
}

class _FlutterMoneyTrackingAppState extends State<FlutterMoneyTrackingApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // ปิดแบนเนอร์ Debug
      // home: SplashScreenUi(), //เรียกหน้า Home
      home: WelcomUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.outfitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
