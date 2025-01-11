import 'package:final_day/pages/homePage.dart';
import 'package:final_day/services/api.dart';
import 'package:flutter/material.dart';

void main() {
  Api().getData();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage()
    );
  }
}