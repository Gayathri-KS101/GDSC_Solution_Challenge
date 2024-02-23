import 'package:flutter/material.dart';
import 'package:stardust/view/home.dart'; // Import your HomeScreen widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // You can define state and methods here if needed

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StarDust',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/', // You can define your initial route if needed
      routes: {
        '/': (context) => HomeScreen(), // Define the route for HomeScreen
        // Define other routes if needed
      },
    );
  }
}
