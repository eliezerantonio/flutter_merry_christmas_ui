import 'package:flutter/material.dart';
import './ui/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material 2A509A App',
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        scaffoldBackgroundColor: const Color(0xff2A509A)
      ),
      home:const HomeScreen(),
    );
  }
}