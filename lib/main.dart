import 'package:flutter/material.dart';
import 'rectangle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/rectagle': (context) => Rectangle(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () => Navigator.pushNamed(context,'/rectagle'),
          child: Text('คำนวณพื้นที่สี่เหลี่ยม'),
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue[300],
            foregroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
