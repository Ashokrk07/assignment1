import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProjectDetailsPage(),
    );
  }
}

class ProjectDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Details'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0), // Padding around the list view
        child: ListView(
          children: <Widget>[
            ProjectCard(
              projectName: 'Web Development Project',
              technology: 'HTML, CSS, Bootstrap',
              description:
                  'A web development page where an customer can order any dish from the menus been available and the hotel owner can update the menu as per his intrest.',
            ),
            ProjectCard(
              projectName: 'Bangalore Zomato Data Analysis',
              technology: 'Python',
              description:
                  'A python mini project of data analysis of an online food ordering system.',
            ),
            ProjectCard(
              projectName: 'Student Sanctuary [ongoing]',
              technology: 'Flutter, Firebase',
              description:
                  'A mobile application where a student can post the problem that he is facing in college and all these problems will be given some solution.',
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
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                child: Text(
                  'Back to Main Page',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String projectName;
  final String technology;
  final String description;

  ProjectCard({
    required this.projectName,
    required this.technology,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black, // Dark background for the card
      margin: EdgeInsets.symmetric(vertical: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              projectName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Technology Used: $technology',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Description: $description',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
