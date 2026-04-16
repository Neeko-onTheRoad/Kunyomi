import 'package:flutter/material.dart';
import 'package:kunyomi/Application/ThemeSystem/theme_info.dart';
import 'package:kunyomi/Application/ThemeSystem/theme_holder.dart';
import 'package:kunyomi/DataManagement/InternalData/application_prefs.dart';

class ThemedApp extends StatefulWidget {

  const ThemedApp({super.key, this.child});

  final Widget? child;

  @override
  State<StatefulWidget> createState() => _ThemedAppState(child);

}

class _ThemedAppState extends State<ThemedApp> {

  // constructors

  _ThemedAppState(this.child) {
    _theme = ApplicationPrefs.theme;
  }

  // fields

  final Widget? child;
  late ThemeInfo _theme;

  // methods

  setTheme(String themeName) {
    ApplicationPrefs.theme = ThemeHolder.getTheme(themeName);
    setState(() {
      _theme = ThemeHolder.getTheme(themeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _theme.theme,
      home: child
    );
  }

}

