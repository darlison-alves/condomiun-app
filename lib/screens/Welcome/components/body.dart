import 'package:firstApp/components/rounded.button.dart';
import 'package:firstApp/constants.dart';
import 'package:firstApp/screens/Login/login_screen.dart';
import 'package:firstApp/screens/SignUp/signup_screen.dart';
import 'package:firstApp/screens/Welcome/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("WELCOME TO EDU", 
            style: TextStyle(fontWeight: FontWeight.bold)
            ),
            SizedBox(height: size.height * 0.03,),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.4,
            ),
            SizedBox(height: size.height * 0.03,),
            RoundedButton(
              text: 'LOGIN',
              press: (){ Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){ 
                    return LoginScreen(); 
                  })); }
              ),
            
            RoundedButton(
              text: 'SIGN UP',
              press: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    }) 
                );
              },
              color: kPrimaryLightColor,
              )
          ]
        ),
      )
    );
  }
}

