import 'package:chat_screen/appColors.dart';
import 'package:chat_screen/chat_list_widget.dart';
import 'package:chat_screen/search_settings_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat',
      theme: ThemeData(
        primarySwatch: AppColors.primaryColor,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: AppColors.roseColors,
          unselectedItemColor: Color(0xFF0A2A3F),
          selectedLabelStyle: TextStyle(fontSize: 12),
          unselectedLabelStyle: TextStyle(fontSize: 12),
        ),
      ),
      home: const MyHomePage(title: 'Chat'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 2,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10, top: 10),
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: Image.asset('assets/images/b_uil.jpg').image,
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover),
              ),
            ),
          ),
          title: Center(child: Text(widget.title)),
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
