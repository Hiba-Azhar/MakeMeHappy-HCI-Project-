import 'package:flutter/material.dart';

class DedicationScreen extends StatefulWidget {
  @override
  _DedicationScreenState createState() => _DedicationScreenState();
}

class _DedicationScreenState extends State<DedicationScreen> {
  // Use a map to store the favorite state for each image URL
  Map<String, bool?> isFavoriteMap = {};

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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 6.0),
              Text(
                'Dedication Quotes',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF131E3A),
                  decoration: TextDecoration.none,
                  shadows: [
                    Shadow(
                      color: Colors.white, // Shadow color
                      offset: Offset(2.0, 2.0), // Shadow offset
                      blurRadius: 2.0, // Shadow blur radius
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0), // Add space between heading and images

          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildImageRow(
                      'https://images.unsplash.com/photo-1616442751986-fe0df84ad730?crop=entropy&cs=srgb&fm=jpg&ixid=M3w0Mzc0NDd8MHwxfHNlYXJjaHw1fHxkZWRpY2F0aW9uJTIwcXVvdGVzfGVufDB8MHx8fDE3MDQ2NTQxOTN8MA&ixlib=rb-4.0.3&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450'),
                  _buildImageRow(
                      'https://images.unsplash.com/photo-1544194215-541c2d3561a4?crop=entropy&cs=srgb&fm=jpg&ixid=M3w0Mzc0NDd8MHwxfHNlYXJjaHwxMnx8aGFwcGluZXNzJTIwcXVvdGVzfGVufDB8MHx8fDE3MDQ2NTQxMjB8MA&ixlib=rb-4.0.3&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450'),

                  _buildImageRow(
                      'https://images.unsplash.com/photo-1554498808-d3ae8f23540c?crop=entropy&cs=srgb&fm=jpg&ixid=M3w0Mzc0NDd8MHwxfHNlYXJjaHwxNHx8ZGVkaWNhdGlvbiUyMHF1b3Rlc3xlbnwwfDB8fHwxNzA0NjU0MTkzfDA&ixlib=rb-4.0.3&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450'),
                  _buildImageRow(
                      'https://images.unsplash.com/photo-1516383740770-fbcc5ccbece0?crop=entropy&cs=srgb&fm=jpg&ixid=M3w0Mzc0NDd8MHwxfHNlYXJjaHw1Mnx8aGFwcGluZXNzJTIwcXVvdGVzfGVufDB8MHx8fDE3MDQ2NTQxMzl8MA&ixlib=rb-4.0.3&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450'),
                  _buildImageRow(
                      'https://images.unsplash.com/photo-1616442751986-fe0df84ad730?crop=entropy&cs=srgb&fm=jpg&ixid=M3w0Mzc0NDd8MHwxfHNlYXJjaHw1fHxkZWRpY2F0aW9uJTIwcXVvdGVzfGVufDB8MHx8fDE3MDQ2NTQxOTN8MA&ixlib=rb-4.0.3&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450'),
                  _buildImageRow(
                      'https://images.unsplash.com/photo-1544194215-541c2d3561a4?crop=entropy&cs=srgb&fm=jpg&ixid=M3w0Mzc0NDd8MHwxfHNlYXJjaHwxMnx8aGFwcGluZXNzJTIwcXVvdGVzfGVufDB8MHx8fDE3MDQ2NTQxMjB8MA&ixlib=rb-4.0.3&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450'),
                  _buildImageRow(
                      'https://images.unsplash.com/photo-1554498808-d3ae8f23540c?crop=entropy&cs=srgb&fm=jpg&ixid=M3w0Mzc0NDd8MHwxfHNlYXJjaHwxNHx8ZGVkaWNhdGlvbiUyMHF1b3Rlc3xlbnwwfDB8fHwxNzA0NjU0MTkzfDA&ixlib=rb-4.0.3&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450'),

                  _buildImageRow(
                      'https://images.unsplash.com/photo-1516383740770-fbcc5ccbece0?crop=entropy&cs=srgb&fm=jpg&ixid=M3w0Mzc0NDd8MHwxfHNlYXJjaHw1Mnx8aGFwcGluZXNzJTIwcXVvdGVzfGVufDB8MHx8fDE3MDQ2NTQxMzl8MA&ixlib=rb-4.0.3&q=85&q=85&fmt=jpg&crop=entropy&cs=tinysrgb&w=450'),

                  // Add more image URLs as needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageRow(String imageUrl) {
    // Initialize the isFavorite state for each image URL
    if (!isFavoriteMap.containsKey(imageUrl)) {
      isFavoriteMap[imageUrl] = false;
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Stack(
            children: [
              GestureDetector(
                onTap: () {
                  // Handle image click
                },
                child: Image.network(
                  imageUrl,
                  height: 150.0,
                  width: 300.0,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 8.0,
                left: 8.0,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      // Toggle the favorite state for the specific image URL
                      isFavoriteMap[imageUrl] =
                          !(isFavoriteMap[imageUrl] ?? false);
                    });
                  },
                  icon: Icon(
                    isFavoriteMap[imageUrl]!
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: isFavoriteMap[imageUrl]! ? Colors.red : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
