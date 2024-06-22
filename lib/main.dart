import 'package:assignment1/internship.dart';
import 'package:assignment1/profile.dart';
import 'package:assignment1/project.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acelucid Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acelucid Assignment'),
        automaticallyImplyLeading: false, // Remove the back icon
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0), // Padding around the list view
        child: ListView(
          children: <Widget>[
            Card(
              color: const Color.fromARGB(
                  255, 19, 19, 19), // Dark background color
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Welcome to the assignment',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 20), // Space between cards
            // Main Grey Card
            Card(
              color: Colors
                  .grey[300], // Lighter background color for the main card
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    // Profile Card
                    Container(
                      width: 200, // Width to fit the text
                      child: Card(
                        color: const Color.fromARGB(
                            255, 19, 19, 19), // Dark color for nested cards
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              'Profile',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Space between cards
                    // Projects Card
                    Container(
                      width: 200, // Width to fit the text
                      child: Card(
                        color: const Color.fromARGB(
                            255, 19, 19, 19), // Dark color for nested cards
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProjectDetailsPage()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              'Projects',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Space between cards
                    // Internship Card
                    Container(
                      width: 200, // Width to fit the text
                      child: Card(
                        color: const Color.fromARGB(
                            255, 19, 19, 19), // Dark color for nested cards
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InternshipPage()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              'Internship',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
