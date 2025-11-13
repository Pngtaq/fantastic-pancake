import 'package:fantastic_pancake/data/notifiers.dart';
import 'package:fantastic_pancake/views/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // here

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkMode,
      builder: (context, value, child) {
        return MaterialApp(
          // theme of the app
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: value ? Brightness.dark : Brightness.light,
            ),
          ),
          home: WidgetTree(),
        );
      },
    );
  }
}
