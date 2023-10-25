import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MyProvider with ChangeNotifier {

  bool isCompleted = false;

  // lista de bool para verificar tarefas
  List<bool> check = List.generate(7, (index) => false);

  // listas de tarefas pendentes na página home
  List<String> names = [
    'Reunião Daily',
    'Verificar PullRequest',
    'Verificar Jira ',
    'Reunião 11 da manhã',
    'Reunião 14 da tarde',
    "Reunião Sprint",
    "Anotação diária",
  ];

}





