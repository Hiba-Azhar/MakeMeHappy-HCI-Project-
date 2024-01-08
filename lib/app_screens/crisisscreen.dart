import "package:flutter/material.dart";
import "package:helloflutter/app_screens/happychunksscreen.dart";
import "package:helloflutter/app_screens/secondscreen.dart";

class CrisisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
          colors: [
            Color(0xFF61EAB8),
            Color(0xFF20AFEA),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 40.0), // Add margin top
          Text(
            'Breathing Activity',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),

          SizedBox(height: 150.0), // Add space between text and GIF

          // Use Image.asset to load a local GIF
          Image.asset(
            'images/breathing-GIF.gif', // Update with your actual local GIF path
            height: 300.0, // Adjust the height as needed
            width: 300.0, // Adjust the width as needed
          ),
          SizedBox(height: 70.0), // Add space between GIF and button

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.orange, // Background color
              onPrimary: Colors.white, // Text color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0), // Curved corners
              ),
            ),
            child: Text(
              'Feeling Better',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Inter', // Adjust the font size as needed
              ),
            ),
          ),
          SizedBox(height: 30.0), // Add space between GIF and button

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HappyChunksScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.white, // Background color
              onPrimary: Colors.lightBlue, // Text color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0), // Curved corners
              ),
            ),
            child: Text(
              'Instant Food of Happiness',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Inter', // Adjust the font size as needed
              ),
            ),
          ),
          // Other content of the CrisisScreen
        ],
      ),
    );
  }
}
