import 'package:flutter/material.dart';
import 'package:whatsap/screens/Splash/Profile/profilescree.dart';
import 'package:whatsap/widgets/uihelper.dart';

class OTPscreen extends StatelessWidget {
  final String phonenumber;

  OTPscreen({required this.phonenumber});

  TextEditingController opt1Controller=TextEditingController();
  TextEditingController opt2Controller=TextEditingController();
  TextEditingController opt3Controller=TextEditingController();
  TextEditingController opt4Controller=TextEditingController();
  TextEditingController opt5Controller=TextEditingController();
  TextEditingController opt6Controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80,),
          Center(
            child:UiHelper.CustomText(text: 'Verifying your number', height: 20,color: Color(0xFF00A884),fontweight:FontWeight.bold),
          ),
          SizedBox(height: 30,),
          UiHelper.CustomText(text: "You've tried to register +91 $phonenumber ", height: 14,color: Color(0xFF5E5E5E),),
          UiHelper.CustomText(text: 'recently. Wait before requesting an SMS or a call. ', height: 14,color: Color(0xFF5E5E5E),),
          SizedBox(height: 05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomText(text: "with your code. ", height: 14,color: Color(0xFF5E5E5E),),
              /// text clikeble
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: UiHelper.CustomText(text: "What's my number?", height: 14,color: Color(0xFF00A884),),

              )
            ],
          ),

          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              UiHelper.CustomContainer(opt1Controller),
              UiHelper.CustomContainer(opt2Controller),
              UiHelper.CustomContainer(opt3Controller),
              UiHelper.CustomContainer(opt4Controller),
              UiHelper.CustomContainer(opt5Controller),
              UiHelper.CustomContainer(opt6Controller),

            ],
          ),

          SizedBox(height: 40,),
          UiHelper.CustomText(text: "Didn't receive code?", height: 20,color: Color(0xFF00A884),),



        ],
      ),

      floatingActionButton:UiHelper.CustomButtom(
          callback: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Profilescree()));
        },
      buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );

  }
}
