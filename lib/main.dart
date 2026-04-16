import 'package:flutter/material.dart';
import 'package:kunyomi/Application/ThemeSystem/themed_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemedApp(
      child: MaterialApp(),
    );
  }
}