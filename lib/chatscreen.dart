

import 'package:chat_app_sorav/components/chatlist.dart';
import 'package:chat_app_sorav/components/chatsdata.dart';
import 'package:chat_app_sorav/components/outlinelinebutton.dart';
import 'package:chat_app_sorav/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ChatScreenBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),

    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF00BF6D),
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chats"),
      BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
      BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
      BottomNavigationBarItem(
        icon: CircleAvatar(
          radius: 14,
          backgroundImage: AssetImage("assets/images/user5.png"),
        ),
        label: "Profile",
      ),
    ],
    );
  }
}
class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              Outlinebutton(press: () {},
                  text: "Recent Messages"),
              SizedBox(width: kDefaultPadding,),
              Outlinebutton(
                press: () {},
                text: "Active",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsdata.length,
            itemBuilder: (context, index) => ChatList(
                chat: chatsdata[index],
                press: () {
                  Navigator.pushNamed(context, "messagescreen");
                } ),
          ),
        ),


      ],
    );
  }
}




  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
        title: Text("Chats"),
        actions: [
    IconButton(
    icon:Icon(Icons.search),
    onPressed: () {},
    ),

        ],
        backgroundColor: kPrimaryColor,
      leading: const ChatsBackButton(),);
  }

class ChatsBackButton extends StatelessWidget {
  const ChatsBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {
      Navigator.pushNamed(context, "welcomescreen");
    },
        icon: Icon(Icons.arrow_back_ios_rounded));
    }
  }


