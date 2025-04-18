import 'package:flutter/material.dart';
import 'screens/landing_page.dart'; // Assuming you saved the previous code in a file named 'landing_page.dart'

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agrow App', // Your app's title
      theme: ThemeData(
        primarySwatch: Colors.teal, // You can customize your theme
      ),
      home: LandingPage(), // Set the LandingPage as the home screen
    );
  }
}