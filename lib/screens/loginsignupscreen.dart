
import 'package:chat_app_sorav/components/mainbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../constants.dart';

class LoginSignup extends StatelessWidget {
  const LoginSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Spacer(flex: 3,),
                Container(alignment: Alignment.center,
                  child: Image.asset("assets/images/whatsapplogo.png",
                  height: 150,
                  ),
                ),
                Spacer(flex: 2,),

                MainButton(text: "Sign In",
                    press: () {
                  Navigator.pushNamed(context, "chatscreen");
                    }
                ),
                SizedBox(height: kDefaultPadding * 1.2),
                MainButton(text: "Sign Up",
                    press: () {
                  Navigator.pushNamed(context, "welcomescreen");
                    },
                  color: Color(0xFFFE9901),
                ),
                Spacer(flex: 4,)
              ],
            ),
          ),) ,
    );
  }
}
