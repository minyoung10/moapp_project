import 'package:flutter/material.dart';
import 'package:moapp_project/detail.dart';

import 'add.dart';
import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receipt',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const HomePage(),
        '/add': (BuildContext context) => const AddPage(),
        '/detail': (BuildContext context) => const DetailPage(),
      },
    );
  }
}