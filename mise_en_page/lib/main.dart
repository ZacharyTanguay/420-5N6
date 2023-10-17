import 'package:flutter/material.dart';
import 'package:mise_en_page/Ecran1.dart';
import 'package:mise_en_page/Yapalooza.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ecran1(),
      routes: routes(),
    );
  }
}

  Map<String, WidgetBuilder> routes() {
    return {
      '/screen1': (context) => Ecran1(),
      '/screen2': (context) => Yapalooza(),
    };
  }
