import 'package:flutter/material.dart';
import 'pages/loginpage.dart';
import 'pages/signuppage.dart';
import 'pages/homepage.dart';
import 'pages/searchpage.dart';
import 'pages/settingpage.dart';
import 'pages/favouritepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Campus Way',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/home': (context) => const HomePage(),
        '/setting': (context) => const SettingPage(),
        '/favourite': (context) => const FavouritePage(),
        '/search': (context) => const SearchPage()
      },
    );
  }
}
