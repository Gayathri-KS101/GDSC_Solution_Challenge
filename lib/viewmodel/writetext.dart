import 'package:flutter/material.dart';

class WriteTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(190, 173, 237, 1),
        title: Text('its me! ur most loyal frnd :)',style: TextStyle(
          fontFamily: 'fonts/Kinkie-Zpwm.ttf', // Replace 'YourCustomFont' with the actual font family name
        )),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(190,173,237,1), // Lavender background color
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  color: Colors.white, // White color for lines
                  child: TextField(
                    maxLines: null, // Allow multiple lines
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Add functionality to save the note
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  // Add other buttons or icons as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
