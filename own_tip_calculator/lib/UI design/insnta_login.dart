import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text("Login page "),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:15),
          child: Column(
           children: [
             Padding(
               padding:  EdgeInsets.only(top: 250),
               child: Container(
                 height: 60,
                 width: double.infinity,
                 decoration: BoxDecoration(

                 ),
               ),

             ),
             SizedBox(height: 15),
             Container(
               height: 60,
               width: double.infinity,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),color: Color(0xff47e725)
               ),
             ),
           ],
          ),
        ),
      ),

    );
  }
}
