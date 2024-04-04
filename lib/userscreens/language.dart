import 'dart:async';
import 'package:ecommerceai/userscreens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopee Splash Screen',
      home: LanguageSelectionScreen(),
    );
  }
}

class LanguageSelectionScreen extends StatefulWidget {
  @override
  _LanguageSelectionScreenState createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 70, left: 90), // Add vertical padding to the title
            child: Row(
              children: [
                Icon(Icons.language,size: 30,),
                SizedBox(width: 10),
                Text(
                  'Language',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                languageContainer('Hindi', 'हिंदी', Colors.red),
                SizedBox(height: 10),
                languageContainer('English', 'English', Colors.red),
                SizedBox(height: 10),
                languageContainer('Arabic', 'عربى', Colors.red),
                SizedBox(height: 10),
                languageContainer('Malayalam', 'മലയാളം', Colors.red),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => LoginPage())); // Navigate to next screen or perform action
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget languageContainer(String language, String languageInNative, Color radioColor) {
    return Container(
      width: 400,
      height: 80,
      margin: EdgeInsets.symmetric(vertical: 25),
      padding: EdgeInsets.all(7),// Add spacing between containers
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(color: Colors.grey, width: 2), // Change border color to red
      ),
      child: Row(
        children: [
          Theme(
            data: ThemeData(
              unselectedWidgetColor: Colors.red, // Change the default color of the radio button
            ),
            child: Radio(

              value: language,
              groupValue: selectedLanguage,
              onChanged: (value) {
                setState(() {
                  selectedLanguage = value.toString(); // Convert value to string
                });
              },
              activeColor: radioColor,
            ),
          ),
          SizedBox(width: 40), // Adjust the width as needed for spacing
          Expanded(
            child: Text(
              languageInNative,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 20), // Adjust the width as needed for additional spacing
        ],
      ),
    );
  }
}
