 import 'package:flutter/material.dart';
import 'home_Ui/home.dart';
import 'UI design/calculate_bmi.dart';
import 'UI design/insnta_login.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // title:'Own tip Calculator',
      // title: 'BMI Calculate',
      title: 'Login Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff0000ff)),
        useMaterial3: true
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }

}
