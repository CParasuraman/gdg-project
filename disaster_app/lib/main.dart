import 'package:flutter/material.dart';
import 'screens/dashboard.dart';

void main() {
  runApp(DisasterApp());
}

class DisasterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AI Disaster Alert',
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Color(0xFFF5F7FA),
      ),
      home: Dashboard(),
    );
  }
}
