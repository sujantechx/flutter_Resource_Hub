import 'package:flutter/material.dart';
import 'package:whatsap/class%20tsk/chart.dart';
import 'package:whatsap/main.dart';
import 'package:whatsap/tab%20page/chartScree.dart';
import 'package:whatsap/widgets/uihelper.dart';


class Profilescree extends StatelessWidget {
  TextEditingController nameContrroler=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

     body:  Column(
       children: [
         SizedBox(height: 80,),
         Center(
           child:UiHelper.CustomText(text: "Profile info", height: 20,color: Color(0xFF00A884),fontweight:FontWeight.bold),
         ),
         SizedBox(height: 30,),
         UiHelper.CustomText(text: 'Please provide your name and an optional ', height: 16,color: Color(0xFF5E5E5E),),
         UiHelper.CustomText(text: "profile photo", height: 16,color: Color(0xFF5E5E5E),),
         SizedBox(height: 40,),


         Container(
           height: 200,
           width: 220,
           decoration: BoxDecoration(
             shape: BoxShape.circle,
             image:DecorationImage(image: AssetImage('assets/logo/camera.png'),
                 // fit: BoxFit.cover
             ),
           ),
         ),

         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 28.0),
           child: TextField(
             keyboardType: TextInputType.text,

             controller: nameContrroler,
             decoration: InputDecoration(
               hintText: 'Type your name her',
                 enabledBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Color(0xFF00A884))
                 )
             ),
           ),
         )

       ],
     ),

      floatingActionButton:UiHelper.CustomButtom(
          callback: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Tabpage()));
          },
          buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,



    );
  }
}
