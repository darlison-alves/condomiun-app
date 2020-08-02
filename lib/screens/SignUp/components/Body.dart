import 'package:firstApp/components/already_have_an_account_check.dart';
import 'package:firstApp/components/rounded.button.dart';
import 'package:firstApp/components/rounded_input_field.dart';
import 'package:firstApp/components/rounded_password_field.dart';
import 'package:firstApp/constants.dart';
import 'package:firstApp/screens/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Background.dart';
import 'or_divider.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("SIGN UP", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset("assets/icons/signup.svg", height: size.height * 0.3),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (values) {},
            ),
            RoundedPasswordField(
              onChanged: (value){},
            ),
            RoundedButton(
              text: "SIGN UP",
              press: (){},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyhaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return LoginScreen();
                    }
                  )
                );
              },
              ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(iconSrc: "assets/icons/facebook.svg", press: (){},),
                SocialIcon(iconSrc: "assets/icons/twitter.svg", press: (){},),
                SocialIcon(iconSrc: "assets/icons/google-plus.svg", press: (){},)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  
  const SocialIcon({
    Key key, this.iconSrc, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryColor
          ),
          shape: BoxShape.circle
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 20,
          width: 20,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}

