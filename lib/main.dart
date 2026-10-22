import 'package:flutter/material.dart';
import 'login_page.dart';
import 'main_navigation.dart';

void main() {
  runApp(const CinePlayApp());
}

class CinePlayApp extends StatelessWidget {
  const CinePlayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CinePlay App',

      // Halaman pertama
      initialRoute: '/login',

      // Named Routes
      routes: {
        '/login': (context) => const LoginPage(),
        '/main': (context) => const MainNavigationPage(),
      },
    );
  }
}