import 'package:app1/Button.dart';
import 'package:app1/login_page.dart';
import 'package:app1/user_and_login.dart';
import 'package:flutter/material.dart';

class Make_account extends StatelessWidget {
   Make_account({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
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
          "Bikin account",
          style: TextStyle(color: Colors.grey,
          fontSize: 16),
         ),
         SizedBox(height: 10,),

         Textfieldak(controller:usernameController, hinttxt: "username", obscureText: false),
         SizedBox(height: 10,),

         Textfieldak(controller: emailController, hinttxt: "Email", obscureText: false),
         SizedBox(height: 10,),

         Textfieldak(controller: passwordController, hinttxt: "password", obscureText: true),
         SizedBox(height: 25,),
          my_button(onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => login_page()));
          })
      ],)
      ),
    );
}
}