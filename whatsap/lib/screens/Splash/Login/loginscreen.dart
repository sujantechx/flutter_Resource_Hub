import 'package:flutter/material.dart';
import 'package:whatsap/screens/Splash/OTP/otpscreen.dart';
import 'package:whatsap/widgets/uihelper.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController phoneController=TextEditingController();
  String selectedcountry="India";
  List<String>countries=[
    "India",
    "America", "Africa", "Italic"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      appBar: AppBar(
        elevation: 0, /// sadd remove 
        backgroundColor: Colors.white,
        title: UiHelper.CustomText(text: 'Enter your Phone number', height: 16,color: Color(0xFF00A884)),
      ),
      */

      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80,),
            Center(
              child:UiHelper.CustomText(text: 'Enter your Phone number', height: 20,color: Color(0xFF00A884),fontweight:FontWeight.bold),
            ),
            SizedBox(height: 30,),
            UiHelper.CustomText(text: 'Whatsapp will need to verify  your Phone ', height: 14,color: Color(0xFF5E5E5E),),
            UiHelper.CustomText(text: 'number. Carrier charges May apply ', height: 14,color: Color(0xFF5E5E5E),),
            SizedBox(height: 05,),

            UiHelper.CustomText(text: "What's my number?", height: 14,color: Color(0xFF00A884),),
            SizedBox(height: 50,),

            /// crete to show in verious option in

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: DropdownButtonFormField(
                items: countries.map((String country) {
                  return DropdownMenuItem(
                    child: Text(country),
                    value: country,
                  );
                }).toList(),
                onChanged: (newvalue) {
                  setState(() {
                    selectedcountry = newvalue!;
                  });
                },
                value: selectedcountry,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF00A884)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF00A884)),

                  )
                ),
              ),
            ),

            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  child: TextField(
                    keyboardType:TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "+91",
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF00A884)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF00A884)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF00A884)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),

                SizedBox(
                  width: 250,
                  child: TextField(
                   keyboardType: TextInputType.numberWithOptions(),
                    controller: phoneController,
                    decoration: InputDecoration(
                     enabledBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Color(0xFF00A884))
                     )
                    ),
                  ),
                )
              ],
            )

          ],
        ),
      ),

      floatingActionButton:UiHelper.CustomButtom(
          callback: (){
            login(phoneController.text.toString());   /// crete login function call
          },
          buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  ///login function
  void login(String phoneNumber) {
    if (phoneNumber.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Enter Phone number"),
          backgroundColor: Color(0xFF00A884),
        ),
      );
    } else if (phoneNumber.length != 10 || !RegExp(r'^\d{10}$').hasMatch(phoneNumber)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Enter 10 digit valid Phone number"),
          backgroundColor: Color(0xFF00A884),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OTPscreen(phonenumber: phoneNumber)),
      );
    }
  }

}
