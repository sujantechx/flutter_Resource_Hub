import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///all are global variable // because it is used for any where // function under crete its limited accsses
  ///
  var billAmtControler= TextEditingController();
  int perCount=1;
  int tipPercent =0;
  num totalBill=0.0;
  num totalTipAmt=0.0;
  num totalAmt=0.0;
  num perPersonAmt=0.0;
  bool custumTip= false;


  @override
  Widget build(BuildContext context) {
    /// SafeArea are used in the app adjucment in the func
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset:false,
        backgroundColor: Color(0xFFD9CDD5),

        body: Padding(
          padding: const EdgeInsets.all(21.0),
          child: Column(
            children: [

              ///titel
              Expanded(
                  flex: 2,
                  child: getTitlePart1()
              ),

              ///part2 tip
              Expanded(
                  flex: 5,
                  child: getTipBorderPart2()
              ),

              ///part3 tip enter

              Expanded(
                  flex: 2,
                  child: getTitlePart3()
              ),
              SizedBox(height:10,),
              ///type 4
              Expanded(
                  flex: 4,
                  child: getTitelpart4()
              ),
              SizedBox(height:50,),
              ///last part

              Expanded(
                  flex: 2,
                  child:lastpart()


              ),
              SizedBox(height: 50,)



            ],
          ),
        ),


      ),
    );
  }

  ///part 1
  Widget getTitlePart1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/image/icon_image/elegant-top-hat_icon.png',
          width: 40, height: 40,),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text.rich(
                  TextSpan(
                      text: "Mr",
                      style: TextStyle(fontSize: 12),
                      children: [
                        TextSpan(
                          text: "TIP",
                          style: TextStyle(fontSize: 19,
                              fontWeight: FontWeight.w800),
                        ),
                      ]
                  )
              ),
              Text('Calculator', style: TextStyle(fontSize: 12),)
            ],
          ),
        )
      ],

    );
  }

  ///part 2
  Widget getTipBorderPart2() {
    return Card(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25)

        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Total  p/persion',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),),
              Text.rich(
                  TextSpan(
                      text: "\$",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight
                          .w900),
                      children: [
                        TextSpan(
                          text: "${perPersonAmt==0.0? "000":perPersonAmt.toStringAsFixed(2)}",
                          style: TextStyle(fontSize: 47,
                              fontWeight: FontWeight.w900),
                        ),
                      ]
                  )
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Total bill', style: TextStyle(fontSize: 16),),
                      Text.rich(
                          TextSpan(
                              text: "\$",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight
                                  .w900, color: Color(0xff03c980)),
                              children: [
                                TextSpan(
                                  text: "${totalBill==0.0? "000":totalBill.toStringAsFixed(2)}",
                                  style: TextStyle(fontSize: 21,
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xff03c980)),
                                ),
                              ]
                          )
                      ),

                    ],
                  ),
                  Column(
                    children: [
                      Text('Total Tip', style: TextStyle(fontSize: 16),),
                      Text.rich(
                          TextSpan(
                              text: "\$",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight
                                  .w900, color: Color(0xff03c980)),
                              children: [
                                TextSpan(
                                  text: "${totalTipAmt==0.0? "000":totalTipAmt.toStringAsFixed(2)}",
                                  style: TextStyle(fontSize: 21,
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xff03c980)),
                                ),
                              ]
                          )
                      ),

                    ],
                  ),

                ],
              )

            ],
          ),
        ),
      ),
      elevation: 7,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
      ),

    );
  }

  ///part 3
  Widget getTitlePart3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Text.rich(
              TextSpan(
                  text: "Enter\n",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),
                  children: [
                    TextSpan(
                      text: "your bill",
                      style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400
                      ),
                    ),
                  ]
              )
          ),

        ),
        Expanded(
          flex: 3,
          child: TextField(
            controller: billAmtControler,
            keyboardType:TextInputType.number ,
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixText: "\$",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                )
            ),

          ),
        )
      ],
    );
  }

  ///part 4
Widget getTitelpart4(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Text.rich(
              TextSpan(
                  text: "Choose\n",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),
                  children: [
                    TextSpan(
                      text: "your tip",
                      style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400
                      ),
                    ),
                  ]
              )
          ),

        ),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                            child:InkWell(
                              onTap: (){
                                tipPercent=10;
                                updateTheResult();
                              },
                              child: Container(
                                width:double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),

                                  color: Color(0xff03c980),

                                ),
                                child: Center(
                                  child: Text.rich(
                                      TextSpan(
                                          text: "10",
                                          style: TextStyle(
                                              fontSize: 21, fontWeight: FontWeight
                                              .w900, color: Colors.white),
                                          children: [
                                            TextSpan(
                                              text: "%",
                                              style: TextStyle(fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white
                                              ),
                                            ),
                                          ]
                                      )
                                  ),
                                ),
                              ),
                            )
                        ),
                        SizedBox(width: 8,),

                        Expanded(
                            child:InkWell(
                              onTap: (){
                                tipPercent=15;
                                updateTheResult();
                              },
                              child: Container(
                                width:double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),

                                  color: Color(0xff03c980),

                                ),
                                child: Center(
                                  child: Text.rich(
                                      TextSpan(
                                          text: "15",
                                          style: TextStyle(
                                              fontSize: 21, fontWeight: FontWeight
                                              .w900, color: Colors.white),
                                          children: [
                                            TextSpan(
                                              text: "%",
                                              style: TextStyle(fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white
                                              ),
                                            ),
                                          ]
                                      )
                                  ),
                                ),
                              ),
                            )
                        ),
                        SizedBox(width: 8,),

                        Expanded(
                            child:InkWell(
                              onTap: (){
                                tipPercent=20;
                                updateTheResult();
                              },
                              child: Container(
                                width:double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),

                                  color: Color(0xff03c980),

                                ),
                                child: Center(
                                  child: Text.rich(
                                      TextSpan(
                                          text: "20",
                                          style: TextStyle(
                                              fontSize: 21, fontWeight: FontWeight
                                              .w900, color: Colors.white),

                                          children: [
                                            TextSpan(
                                              text: "%",
                                              style: TextStyle(fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white
                                              ),
                                            ),
                                          ]
                                      )
                                  ),
                                ),
                              ),
                            )
                        ),


                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Stack(
                      children: [
                        TextField(
                          // controller: billAmtControler,
                          keyboardType:TextInputType.number ,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              prefixText: "\%",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16)
                              )
                          ),

                        ),

                        custumTip? Container():InkWell(
                          onTap: (){
                            custumTip=true;
                            setState(() {

                            });
                          },
                          child: Container(
                            width:double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff03c980),
                          
                            ),
                            child: Center(
                              child: Text(
                                'Custom Tip',textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w800
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],

                    ),
                  ),
                )
              ],
            )
        )
      ],
    );
}

///last part
Widget lastpart(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Text.rich(
              TextSpan(
                  text: "Split\n",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),
                  children: [
                    TextSpan(
                      text: "the total",
                      style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400
                      ),
                    ),
                  ]
              )
          ),

        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                            child:InkWell(
                              onTap: (){
                                if(perCount>1){
                                  perCount --;

                                  updateTheResult();

                                }
                              },
                              child: Container(
                                width:double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),

                                  color: Color(0xff03c980),

                                ),
                                child: Center(
                                  child: Text.rich(
                                      TextSpan(
                                        text: "-",
                                        style: TextStyle(
                                            fontSize: 38, fontWeight: FontWeight
                                            .w900, color: Colors.white),

                                      )
                                  ),
                                ),
                              ),
                            )
                        ),

                        Expanded(
                            flex: 2,
                            child:Container(
                              width:double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10)),

                                color: Color(0xffffffff),

                              ),
                              child: Center(
                                child: Text.rich(
                                    TextSpan(
                                      text: "$perCount",
                                      style: TextStyle(
                                        fontSize: 21, fontWeight: FontWeight
                                          .w900, ),

                                    )
                                ),
                              ),
                            )
                        ),
                        // SizedBox(width: 8,),

                        Expanded(
                            child:InkWell(
                              onTap: (){
                                perCount ++;
                                updateTheResult();
                              },
                              child: Container(
                                width:double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10)),

                                  color: Color(0xff03c980),

                                ),
                                child: Center(
                                  child: Text.rich(
                                      TextSpan(
                                        text: "+",

                                        style: TextStyle(
                                            fontSize: 21, fontWeight: FontWeight
                                            .w900, color: Colors.white),

                                      )
                                  ),
                                ),
                              ),
                            )
                        ),


                      ],
                    ),
                  ),
                  SizedBox(height: 8,),

                ],
              ),
            )
        )
      ],
    );
}

///logic function calculate tip
void updateTheResult(){
   if(billAmtControler.text!= ""){
     totalBill=double.parse(billAmtControler.text.toString());
     totalTipAmt=totalBill*(tipPercent/100);
     totalAmt=totalBill+totalTipAmt;
     perPersonAmt=totalAmt/perCount;
     setState(() {

     });

   }else{
     perCount =1;
   }
}

}

// ///logic function calculate tip
// void updateTheResult(){
//   if(billAmtControler.text!= ""){
//     totalBill=double.parse(billAmtControler.text.toString());
//     totalTipAmt=totalBill*(tipPercent/100);
//     totalAmt=totalBill+totalTipAmt;
//     perPersonAmt=totalAmt/perCount;
//     setState(() {
//
//     });
//
//   }else{
//     perCount =1;
//   }
// }