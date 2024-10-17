import 'package:flutter/material.dart';
import 'package:gold_app_with_api/network/dio_helper.dart';

import 'main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Diohelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
