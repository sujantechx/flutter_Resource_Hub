import 'package:flutter/material.dart';
import 'package:whatsap/screens/Splash/splashscreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Whatsapp',
    theme:ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF00A884)),
      useMaterial3: false /// Use for may color in all time defulte color
    ) ,
    home: SplashScreen(),
    // home: Chart(),
    // home: Upadate(),
    // home: Call(),

    debugShowCheckedModeBanner: false,

  );
  }
}


