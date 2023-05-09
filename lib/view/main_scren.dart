import 'package:chat_screen/core/fonts.dart';
import 'package:chat_screen/data/usersList.dart';
import 'package:chat_screen/view/chat_list_widget.dart';
import 'package:chat_screen/view/search_settings_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.title});
  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 2,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 12, top: 12),
            child: Container(
              // width: 15,
              // height: 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: Image.asset(UsersList().chatUsers[0].avatar).image,
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover),
              ),
            ),
          ),
          title: Center(
              child: Text(
            widget.title,
            style: SafeGoogleFont(
              'Jost',
            ),
          )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.loupe_outlined,
                    size: 35,
                  )),
            )
          ]),
      bottomNavigationBar: MediaQuery(
        data: const MediaQueryData(
            padding: EdgeInsets.only(bottom: 20) // here is the padding
            ),
        child: BottomNavigationBar(
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_outlined),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'More',
            ),
          ],
          onTap: ((value) {}),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SearchAndSettingsWidget(),
          ChatWidget(),
        ],
      ),
    );
  }
}
