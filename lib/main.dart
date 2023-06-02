import 'package:cricjass/ui/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: const Color.fromARGB(255, 164, 133, 199),
        // Set your gradient color here
        primaryColorBrightness: Brightness
            .dark, // Ensure text is readable on the gradient background
      ),
      home: const HomePage(),
    );
  }
}
