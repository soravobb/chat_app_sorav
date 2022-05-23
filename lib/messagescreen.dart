

import 'package:chat_app_sorav/components/messagebody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: MessageBody(),
      );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF00BF6D),
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          AppBarBackButton(),

          CircleAvatar(
            backgroundImage: AssetImage("assets/images/user5.png"),
          ),
          SizedBox(width: kDefaultPadding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kristin Watson",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Online",
                style: TextStyle(fontSize: 12),
              ),
            ],
          )
            ],
          ),
      actions: [
        IconButton(
          icon: Icon(Icons.local_phone),
          onPressed: () {
          },
        ),
        IconButton(
          icon: Icon(Icons.videocam),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPadding / 2),
      ],
      );
  }
}

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
    onPressed: () {
      Navigator.pushNamed(context , "chatscreen");
      } ,
        icon:Icon(Icons.arrow_back_ios,) );
  }
}
