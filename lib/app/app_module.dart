import 'package:flutter_modular/flutter_modular.dart';
import 'package:projeto_teste/pages/splash/splash_page.dart';
import 'package:projeto_teste/main.dart';

class AppModule extends Module {


  @override
  final List<ModularRoute> routes = [
    ChildRoute(
        Modular.initialRoute, child: (_, args) => SplashPage()),
    ChildRoute("${Modular.initialRoute}loginPage",
        child: (_, args) => const HomePage()),
    ChildRoute("${Modular.initialRoute}loginPage",
        child: (_, args) => const HomePage()),
    ChildRoute("${Modular.initialRoute}loginPage",
        child: (_, args) => const HomePage()),
  ];
}