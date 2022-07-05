import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const DarkMode());
}

class DarkMode extends StatefulWidget {
  const DarkMode({Key? key}) : super(key: key);

  @override
  State<DarkMode> createState() => _DarkModeState();
}

class _DarkModeState extends State<DarkMode> {
  // This widget is the root of your application.
  ThemeMode currentThemeMode = ThemeMode.light;

  void toggleThemeMode() {
    setState(() {
      currentThemeMode = currentThemeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: currentThemeMode,
      theme: DarkModeTheme.light,
      darkTheme: DarhModeTheme.dark,
      home: DarkMode(onThemeModePressed: toggleThemeMode),
    );
  }
}

class DarkMode extends StatefulWidget {
  const DarkMode({
    Key? key,
    required this.onThemeModePressed,
  }) : super(key: key);

  final VoidCallback onThemeModePressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('SWEET HOME'),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            textBaseline: TextBaseline('O que gostaria de monitorar?')),
        leading: const Icon(Icons.home_outlined),
        actions: [
          IconButton(
            onPressed: widget.onThemeModePressed,
            icon: Icon(
              theme.brightness == Brightness.light
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
          )
        ],
      ),
    );
  }
}
