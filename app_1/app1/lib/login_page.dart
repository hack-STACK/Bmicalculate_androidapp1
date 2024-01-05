
import 'package:app1/Button.dart';
import 'package:app1/Make_account.dart';
import 'package:app1/forgotpw.dart';
import 'package:app1/introscreen.dart';
import 'package:app1/user_and_login.dart';
import 'package:flutter/material.dart';

class login_page extends StatelessWidget {
  login_page({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
void onpressed(){
  
}
 @override
  Widget build(BuildContext login_page) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
          const SizedBox(height: 50,),
              FlutterLogo(size: 100,),
            const SizedBox(height: 50,),
            //text
            const Text(
              "fdafasdfdsafasdfasf",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 25,),
            //nama textfield
           Textfieldak(
            controller: usernameController,
            hinttxt: 'username',
            obscureText: false,
           ),

           const SizedBox(height: 10,),

           //paddowrd text
           Textfieldak(
            controller: passwordController,
            hinttxt: 'password',
            obscureText: true,
           ),

           const SizedBox(height: 10,),

          //  forgot password text
          GestureDetector(
            onTap: (){
              Navigator.push(login_page ,MaterialPageRoute(builder: (login_page) => forgotpassword()));
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Lupa password",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10,),
           
          my_button(onTap: (){
            Navigator.push(login_page, MaterialPageRoute(builder: (login_page) => introductionScreen()));
          }),

          const SizedBox(height: 15,),
          GestureDetector(
            onTap: (){
              Navigator.push(login_page, MaterialPageRoute(builder: (login_page) => Make_account()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(children: [
                Expanded(child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[500],
                )),
                const Padding(padding: 
                EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "Buat Akun",
                  style: TextStyle(color: Colors.blue),
                ),),
                Expanded(child: 
                Divider(thickness: 0.5,
                color: Colors.grey[400],))
              ]),
              ),
          ),
        ],),
      ),
    );
  }
}