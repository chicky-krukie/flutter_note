import 'package:flutter/material.dart';
import 'homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: unnecessary_new
      theme: new ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(0, 239, 239, 239),
        primarySwatch: Colors.amber
        ),
        
      home: HomePage(),
    );
  }
}
