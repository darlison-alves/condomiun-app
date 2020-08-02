import 'package:firstApp/components/already_have_an_account_check.dart';
import 'package:firstApp/components/rounded.button.dart';
import 'package:firstApp/components/rounded_input_field.dart';
import 'package:firstApp/components/rounded_password_field.dart';
import 'package:firstApp/screens/SignUp/signup_screen.dart';
import 'package:firstApp/services/login.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'background.dart';

class Body extends StatelessWidget {

  final _service = LoginService();
  
  // const Body({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("LOGIN", style: TextStyle( fontWeight: FontWeight.bold) ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset("assets/icons/login.svg", height: size.height * 0.3,),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintText: 'Your Email',
            onChanged: (value){},
          ),
          RoundedPasswordField(
            onChanged: (value){},
          ),
          RoundedButton(
            text: "LOGIN",
            press: (){
              _service.getByUsername("username");
            },
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyhaveAnAccountCheck(
            press: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SignUpScreen();
                }));
            },
          )
        ],
      ),
    );
  }
}






