import 'package:flutter/material.dart';

class BmiHome extends StatefulWidget {
  const BmiHome({super.key});

  @override
  State<BmiHome> createState() => _BmiHomeState();
}

class _BmiHomeState extends State<BmiHome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Column(
        children: [
         Expanded(
           flex: 4,
           child: Container(
             color: Colors.green,
           ),
         ),
          Expanded(
            flex: 1,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text("Healthy",
                  style: TextStyle(
                    color: Color(0xff40a689),
                    fontWeight: FontWeight.w600,
                    fontSize: 30),
                )
                )
              ],
            )
          ), 
          
          Expanded(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("Male"),
                  Icon(Icons.male,size:60,)
                ],
              ),
              Column(
                children: [
                  Text("Female"),
                  Icon(Icons.female,size:60,weight: 20,)
                ],
              )
            ],
            )
          ),

          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Age"),
                    SizedBox(height: 10,),
                    Text("22", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),)
                  ],
                ),
                Text("|",style: TextStyle(fontSize: 60,fontWeight:FontWeight.w100),),
                Column(
                  children: [
                    Text("Hight"),
                    SizedBox(height: 10,),
                    Text("175", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),)
                  ],
                ),
                Text("|",style: TextStyle(fontSize: 60,fontWeight:FontWeight.w100),),

                Column(
                  children: [
                    Text("Weight"),
                    SizedBox(height: 10,),
                    Text("75", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),)
                  ],
                ),

              ],
            ),
          ),
          
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 380,
                  height: 80,
                  color: Color(0xff40a689),
                  child: Center(child: Text("Calculate BMI")),
                )
              ],
            )

          ),

        ],
      ),

    );
  }
}
