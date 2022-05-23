import 'package:chat_app_sorav/chatscreen.dart';
import 'package:chat_app_sorav/messagescreen.dart';
import 'package:chat_app_sorav/screens/loginsignupscreen.dart';
import 'package:chat_app_sorav/screens/welcomescreen.dart';
import 'package:chat_app_sorav/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat app',
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),

      routes:{
        'loginsignupscreen': (context) => LoginSignup(),
        'chatscreen': (context) => ChatScreen(),
        'messagescreen': (context) => MessageScreen(),
        "welcomescreen" : (context) => WelcomeScreen(),



      },


    );
  }
}

