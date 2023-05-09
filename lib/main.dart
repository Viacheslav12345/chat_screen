import 'package:chat_screen/core/appColors.dart';
import 'package:chat_screen/view/main_scren.dart';
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
      home: const MainScreen(title: 'Chat'),
    );
  }
}
