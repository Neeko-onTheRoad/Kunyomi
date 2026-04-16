import 'package:flutter/material.dart';
import 'package:kunyomi/Application/kunyomi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    var theme = ThemeData(
      colorScheme: ThemeData.dark().colorScheme,
      fontFamily: 'SourceHan'
    );

    return MaterialApp(
      home: const Kunyomi(),
      theme: theme,
    );
  }

}