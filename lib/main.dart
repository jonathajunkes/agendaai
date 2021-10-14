import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home.dart';
import 'pages/cadastroEmpresa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.a
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda Aí',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: home(),
    );
  }
}
