import 'package:app1/Button.dart';
import 'package:app1/login_page.dart';
import 'package:app1/user_and_login.dart';
import 'package:flutter/material.dart';

class forgotpassword extends StatelessWidget {
  forgotpassword({super.key});
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [
        SizedBox(height: 50,),
         FlutterLogo(
          size: 100,
         ),
         SizedBox(height: 50,),
         
         const Text(
          "Anda lupa password ya",
          style: TextStyle(color: Colors.grey,
          fontSize: 16),
         ),
         SizedBox(height: 26,),

         Textfieldak(controller: passwordController, hinttxt: "password", obscureText: false),
         SizedBox(height: 25,),
          my_button(onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => login_page()));
          })
      ],)
      ),
    );
  }
}