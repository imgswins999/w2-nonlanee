import 'package:flutter/material.dart';
import 'rectangle.dart';
import 'pressure.dart';

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
        '/pressure': (context) => Pressure(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 46, 46, 46),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.network('https://cdn-icons-png.flaticon.com/512/2344/2344132.png',width: 250,)),
            Center(
              child: TextButton(
                onPressed: () => Navigator.pushNamed(context, '/rectagle'),
                child: Text('คำนวณพื้นที่สี่เหลี่ยม',style: TextStyle(fontSize: 20),),
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 196, 58),
                  foregroundColor: Colors.white,
                  minimumSize: Size(300, 50),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: TextButton(
                onPressed: () => Navigator.pushNamed(context, '/pressure'),
                child: Text('คำนวณความดัน',style: TextStyle(fontSize: 20),),
                style: TextButton.styleFrom(

                  backgroundColor: const Color.fromARGB(255, 246, 100, 144),
                  foregroundColor: Colors.white,
                  minimumSize: Size(300, 50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
