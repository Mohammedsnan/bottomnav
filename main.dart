import 'package:flutter/material.dart';
import 'indexpage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Indexpage(),
    );
  }
}
class homepa extends StatefulWidget {
  const homepa({super.key});

  @override
  State<homepa> createState() => _homepaState();
}

class _homepaState extends State<homepa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
      ),
    );
  }
}

