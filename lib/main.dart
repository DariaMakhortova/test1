import 'package:flutter/material.dart';
import 'email_view_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Email Viewer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD4A574),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const EmailViewScreen(),
    );
  }
}
