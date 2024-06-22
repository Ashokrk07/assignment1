import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.black, // Dark background color for the card
              margin: EdgeInsets.all(20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'assets/profile.png'), // Load image from assets
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Ashok R K',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Email: ashokrkchoudary07@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Contact: +91 97418 38246',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Age: 23',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Additional Details
                    Text(
                      'Occupation: Fresher',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Address: Bangalore, Karnataka',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Bio: An motivated individual seeking employment in an organization that will provide opportunities to utilize analytical, communication skills.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20), // Space before the back button
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the previous page
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey, // Background color
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              child: Text(
                'Back to Main Page',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
