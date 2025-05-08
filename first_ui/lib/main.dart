import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'First UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            height: 380,
            width: 300,
            color: Color(0xff00ff00),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.all(3),

                  height: 40,
                width: 290,
                color: Color(0xffe0dade),
                  child: Text('Strawbery Pavolova',textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 25,
                  ),),

                ),

                Container(
                  margin: EdgeInsets.all(3),
                  height: 130,
                  width: 290,
                  color: Color(0xffe0dade),
                  child: Text('Strawberry Pavlova is a light, cloud-like dessert with a crisp meringue shell, fluffy marshmallow center, and fresh strawberries layered over whipped cream.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                    fontSize: 18,
                  ),),

                ),

                Container(
                  margin: EdgeInsets.all(3),
                  height: 40,
                  width: 290,
                  color: Color(0xffe0dade),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(

                          child: Text("★★★★★",textAlign: TextAlign.center,),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Container(
                          child: Text("170  Review",
                          textAlign: TextAlign.center,),
                        ),
                      )


                    ],
                  ),

                ),
                SizedBox(height: 8),

                Container(
                  margin: EdgeInsets.all(3),
                  height: 110,
                  width: 290,
                  color: Color(0xffe0dade),
                  child: Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset ('assets/images/icon_image/fridge_icon.png'),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  child: Text('Store',style: TextStyle(fontWeight: FontWeight.bold),),
                                ),

                                SizedBox(height: 15,),
                                Container(
                                  child: Text('25 mine',style: TextStyle(fontStyle: FontStyle.italic),),
                                ),


                              ],
                            ),
                          ),
                        ),
                      ),
                      
                      SizedBox(width:20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset ('assets/images/icon_image/watch_icon.png'),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  child: Text('Clock',style: TextStyle(fontWeight: FontWeight.bold),),
                                ),

                                SizedBox(height: 15,),
                                Container(
                                  child: Text('1 hr',style: TextStyle(fontStyle: FontStyle.italic),),
                                ),


                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 30,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                // child: Image.asset ('assets/images/icon_image/food_icon.png'),
                                child: Image.asset('assets/images/icon_image/food_icon.png'),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                child: Text('Foods',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),

                              SizedBox(height: 15,),
                              Container(
                                child: Text('1-3 ',style: TextStyle(fontStyle: FontStyle.italic),),
                              ),


                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              ],
            ),

          ),


          Container(
            margin: EdgeInsets.all(10),
            height: 400,
            width: 600,
            child: Image.asset('assets/images/background_img1.png'),
          ),




        ],

      ),
    );
  }
}


// body:Padding (
//   padding:  EdgeInsets.all(30.0),
//
//   child: Container(
//     height: 600,
//     width: 1500,
//     color: Color(0xFFD3DCD3),
//
//       child: Row(
//         children: [
//
//           Container(
//             decoration: BoxDecoration(color: Color(0xffec0cec)),
//           ),
//           Column(
//             children: [
//               Container(
//                 height: 500,
//                 width:550 ,
//                 color: Color(0xff6d91e7),
//
//               ),
//
//               Row(
//                 children: [
//                   Container(
//                     height: 100,
//                     width:100 ,
//                     color: Color(0xff1ce7e0),
//                   ),
//                 ],
//
//               ),
//
//               Row(
//                 children: [
//                   Container(
//                     height: 100,
//                     width:100 ,
//                     color: Color(0xffdde31e),
//                   ),
//                 ],
//
//               ),
//
//               Row(
//                 children: [
//                   Container(
//                     height: 100,
//                     width:100 ,
//                     color: Color(0xff0e46d3),
//                   ),
//                 ],
//
//               ),
//
//               Row(
//                 children: [
//                   Container(
//                     height: 100,
//                     width:0100 ,
//                     color: Color(0xff8131d7),
//                   ),
//                 ],
//
//               ),
//             ],
//           ),
//
//           Column(
//             children: [
//               Container(
//                 margin: EdgeInsets.all(20),
//                 height: 550,
//                 width:886 ,
//                 child: Image.asset('assets/images/background_img1.png', fit:BoxFit.fill,)
//
//                 // color: Color(0xffe1c9ca),
//                 // decoration: BoxDecoration(
//                 //   image: DecorationImage(
//                 //
//                 //     image: AssetImage('assets/images/background_img1.png'),
//                 //     fit: BoxFit.cover,
//                 //   ),
//                 //   // borderRadius: BorderRadius.circular(10),
//                 // ),
//               )
//
//
//             ],
//
//           )
//         ],
//       ),
//     ),
//
// ),
