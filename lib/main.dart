import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:shope/My_Tasks/language.dart';
import 'userscreens/language.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopee Splash Screen',
      home: SplashScreen(),
    );

  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      // Navigate to desired screen after splash screen
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => LanguageSelectionScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/image2.png', // Replace this with the path to your image icon
                  width: 40, // Adjust the width of the image
                  height: 50, // Adjust the height of the image
                ),
                SizedBox(width: 8), // Adjust the spacing between image and text
                Text(
                  'SHOPEE',
                  style: TextStyle(
                    color: Colors.red[700],
                    fontSize: 42,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('Welcome to Shopee!'),
      ),
    );
  }
}
