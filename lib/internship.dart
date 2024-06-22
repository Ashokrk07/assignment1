import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internship Details',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InternshipPage(),
    );
  }
}

class InternshipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internship Details'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0), // Padding around the content
        child: Column(
          children: <Widget>[
            InternshipCard(
              companyName: 'IBM',
              description:
                  'IBM provided me knowledge of utizing the cloud services and how to develop chatbot using WatsonX assistant service ',
            ),
            InternshipCard(
              companyName: 'Code Alpha',
              description:
                  'This provided me knowledge of developing the website and performing the task in given period of time which helped me in time management.',
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

class InternshipCard extends StatelessWidget {
  final String companyName;
  final String description;

  InternshipCard({
    required this.companyName,
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
              companyName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
