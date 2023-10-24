import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_teste/pages/form/form_page.dart';
import 'package:projeto_teste/pages/home/home_page.dart';
import 'package:projeto_teste/pages/login/login.dart';
import 'package:projeto_teste/pages/provider.dart';
import 'package:projeto_teste/pages/splash/splash_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: const MyApp()
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'login': (context) => const LoginPage(),
        'home': (context) => const HomePage(),
        'form': (context) => const FormPage(),

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




