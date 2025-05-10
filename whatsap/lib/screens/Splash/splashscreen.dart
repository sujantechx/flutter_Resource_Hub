import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsap/screens/Splash/OnBording/onboardingscreen.dart';
import 'package:whatsap/widgets/uihelper.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
/// inite    automatic server se content ajata hai
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();  /// here super ass call in the parent class automatic
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
      /// PushReplacement her work in the once see then navigate mane scree ,you back not show in splce scree
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo/whatsaplogo.png',width: 130,height: 130,),
            SizedBox(height: 20,),
            UiHelper.CustomText(text: 'Whatsapp', height: 18),

          ],
        ),
      ),

    );
  }
}