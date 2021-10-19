import 'package:flutter/material.dart';

import 'auth/login.dart';

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
      home: Login(),
    );
  }
}
