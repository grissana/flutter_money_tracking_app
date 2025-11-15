import 'package:flutter/material.dart';
import 'package:flutter_money_tracking_app/views/homeuiin.dart';
// import 'package:flutter_money_tracking_app/views/homeuitrack.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://ygvcifqmhrwmybjarmhi.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlndmNpZnFtaHJ3bXliamFybWhpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjMxMjcyNjIsImV4cCI6MjA3ODcwMzI2Mn0.TySFcC-90BBAfi987ZnHydKmjNalkeCtxO1jcOSUpkU',
  );

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
      // home: WelcomUi(),
      home: Homeuiin(),
      theme: ThemeData(
        textTheme: GoogleFonts.outfitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
