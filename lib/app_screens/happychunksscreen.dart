import 'package:flutter/material.dart';
import 'encouragingscreen.dart';
import 'happyscreen.dart';
import 'dedicationscreen.dart';

class HappyChunksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0),
            ),
            gradient: LinearGradient(
              colors: [
                Color(0xFF04C399), // Start color
                Color(0xFF05A9D4), // End color
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Text(
          'Peaceful Mind Quotes ⭐️',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 23.0,
            color: Colors.white,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16.0),
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildContentBox(
                context,
                'Encouraging Quotes',
                'images/encouraging.png',
                EncouragingScreen(),
                imageHeight: 150.0,
                imageWidth: MediaQuery.of(context).size.width * 0.8,
              ),
              SizedBox(height: 13.0),
              _buildContentBox(
                context,
                'Happy Quotes',
                'images/happy.png',
                HappyScreen(),
                imageHeight: 150.0,
                imageWidth: MediaQuery.of(context).size.width * 0.8,
              ),
              SizedBox(height: 13.0),
              _buildContentBox(
                context,
                'Dedication Quotes',
                'images/dedication.png',
                DedicationScreen(),
                imageHeight: 150.0,
                imageWidth: MediaQuery.of(context).size.width * 0.8,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContentBox(
    BuildContext context,
    String text,
    String imageUrl,
    Widget screen, {
    double imageHeight = 100.0,
    double imageWidth = 100.0,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => screen,
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Color(0xFF0DAEB8),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.0),
              Image.asset(
                imageUrl,
                height: imageHeight,
                width: imageWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
