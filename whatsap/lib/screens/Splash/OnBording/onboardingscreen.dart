import 'package:flutter/material.dart';
import 'package:whatsap/screens/Splash/Login/loginscreen.dart';
import 'package:whatsap/widgets/uihelper.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
            height: 200,
            width: 220,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image:DecorationImage(image: AssetImage('assets/images/boarding_logo.jpg'),
                fit: BoxFit.cover

              ),


            ),
            // Image.asset('assets/images/boarding_logo.jpg',height: 250,width: 250,),

          ),
            SizedBox(height: 20,),

            UiHelper.CustomText(
                text: 'Welcome to Whatsapp',
                height: 20,
                color: Color(0xFF000000)),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: 'Read out', height: 14),
                UiHelper.CustomText(text: '  Privacy Policy?', height: 14,color: Color(0xff0c42cc)),
                UiHelper.CustomText(text: " Tap ''Agree and continue''", height: 14)
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: ' to accept the', height: 14),
                UiHelper.CustomText(text: '  Teams of Service ', height: 14,color: Color(0xff0c42cc)),
              ],
            ),
/*
            SizedBox(height: 200,),
            UiHelper.CustomButtom(callback: (){}, buttonname: "Agree and continue")*/
          /// use size box to size adjuct to uper ya niche karskte
          ],
        ),
      ),
      ///direct to use any thing show to bootm side
      floatingActionButton:UiHelper.CustomButtom(
          callback: (){
            /// her provide navigate page rout
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
          },
          buttonname: "Agree and continue"),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
