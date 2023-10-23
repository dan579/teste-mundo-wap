import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_teste/pages/home/home_page.dart';
import 'package:projeto_teste/pages/login/login.dart';
import 'package:projeto_teste/pages/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'login': (context) => const LoginPage(),
        'home': (context) => const HomePage(),
      },
      initialRoute: '/',
      title: 'Projeto Teste',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}




