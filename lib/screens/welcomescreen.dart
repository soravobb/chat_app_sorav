
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              children: [
                Spacer(flex: 1),
                Image.asset("assets/images/welcome.png"),
                Spacer(flex: 3),
                Text(
                  "Welcome to our sorav\nmessaging app",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),),
                Spacer(),
                Text(
                  "Freedom talk any person of your \nmother language.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .color!
                        .withOpacity(0.64),
                  ),
                ),
                Spacer(flex: 3,),
                FittedBox(
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "loginsignupscreen");
                      },
                      child: Row(
                        children: [
                          Text(
                          "Login/Signup",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .color!
                                .withOpacity(0.8),)
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color!
                                    .withOpacity(0.8),),
                    ],
                ),
            ),
    ),
                Spacer(flex: 5,),
          ],
    ),
    ),
    );
  }
}
