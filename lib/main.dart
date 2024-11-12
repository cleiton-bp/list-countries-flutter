import 'package:flutter/material.dart';
import 'package:ap2/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white24),
        useMaterial3: true,
      ),
      home: const HomeScreen(
        title: 'Lista de Países',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
