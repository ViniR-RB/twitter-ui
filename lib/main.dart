import 'package:flutter/material.dart';
import 'package:x/pages/home_page.dart';
import 'package:x/ui/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', theme: AppTheme.theme, home: const HomePage());
  }
}
