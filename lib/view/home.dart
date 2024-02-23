import 'package:flutter/material.dart';
import 'package:stardust/viewmodel/weekday_button.dart';
import 'package:stardust/viewmodel/droplet_button_viewmodel.dart';
import 'package:stardust/viewmodel/writetext.dart';// Import the WriteTextPage widget
import 'package:stardust/view/videolistpage.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(190, 173, 237, 1),
        centerTitle: true,
        title: Text(
          'StarDust',
          style: TextStyle(fontFamily: 'Starstruck'),


        ),
      ),
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/homebg.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Vertical Image
          Positioned(
            left: 20,
            top: 0,
            bottom: 0,
            child: Container(
              width: 100,
              child: Image.asset('assets/bottle.jpeg', scale: 1.5),
            ),
          ),
          // Text below the vertical image
          Positioned(
            left: 60,
            top: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You suffer more in your imagination ',
                  style: TextStyle(fontFamily: 'Starstruck', fontSize: 12, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'than in reality',
                  style: TextStyle(fontFamily: 'Starstruck', fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),
          // Droplet Buttons
          Positioned(
            left: 20,
            top: 180,
            child: DropletButtonsRow(),
          ),
          // Notepad Icon Button and Text
          Positioned(
            left: 170, // Adjust the left position to match the rectangle
            top: 400, // Adjust the top position to match the rectangle
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.note, // Notepad icon
                    color: Colors.white, // Change the color of the icon
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WriteTextPage()), // Navigate to WriteTextPage
                    );
                  },
                ),
                SizedBox(width: 8), // Add some spacing between the icon and text
                Text(
                  '<-- Scribble it out',
                  style: TextStyle(fontSize: 14), // Adjust the font size as needed
                ),
              ],
            ),
          ),
          // Rectangle below the water droplets
          Positioned(
            left: 180,
            top: 260, // Adjust the top position as needed
            child: Container(
              width: 150, // Adjust the width as needed
              height: 150, // Adjust the height as needed
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 4), // White outline
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/skribble.jpeg', // Provide the path to your image asset
                fit: BoxFit.cover, // Adjust the fit as needed
              ),
            ),
          ),

          // Another Image below the water droplets
          Positioned(
            left: 10,
            top: 550,
            child: Container(
              width: 150,
              height: 100,
              child: Image.asset('assets/yoga1.jpg', scale: 1.5),
            ),
          ),

          Positioned(
            left: 150,
            top: 550,
            child: Container(
              width: 100,
              child: Image.asset('assets/yoga2.jpg', scale: 1.5),
            ),
          ),


          Positioned(
            left: 230,
            top: 550,
            child: Container(
              width: 150,
              height: 100,
              child: Image.asset('assets/yoga3.jpg', scale: 1.5),
            ),
          ),



          // Content
          Center(
            child: WeekdayButtonsRow(),
          ),
          Positioned(
            right: 20, // Adjust the position as needed
            bottom: 20, // Adjust the position as needed
            child: IconButton(
              icon: Icon(
                Icons.video_library, // Video icon
                color: Colors.white, // Icon color
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VideoListPage()), // Navigate to VideoPage
                );
              },
              tooltip: "Let's Get Started", // Tooltip for the IconButton
            ),
          ),
          Positioned(
            right: 100,
            top: 460,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You are ',
                  style: TextStyle(fontFamily: 'Starstruck', fontSize: 12, color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'your home <3',
                  style: TextStyle(fontFamily: 'Starstruck', fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
