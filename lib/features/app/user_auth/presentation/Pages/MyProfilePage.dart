import 'package:flutter/material.dart';

void main() {
  runApp(MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("My Profile",
        style: TextStyle(fontWeight: FontWeight.w600),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileAttribute(label: 'Name', value: 'John Doe'),
            ProfileAttribute(label: 'Class', value: '12th Grade'),
            ProfileAttribute(label: 'Section', value: 'B'),
            ProfileAttribute(label: 'Roll No.', value: '12345'),
            ProfileAttribute(label: 'Phone No.', value: '+1 123-456-7890'),
            ProfileAttribute(label: 'Father contact', value: '+1 123-456-7890'),
            ProfileAttribute(label: 'Email', value: 'john.doe@example.com'),
            ProfileAttribute(label: 'Address', value: '123 Main Street, Cityville'),
            // Add more attributes as needed
          ],
        ),
      ),
    );
  }
}

class ProfileAttribute extends StatelessWidget {
  final String label;
  final String value;

  const ProfileAttribute({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 130, // Adjust the width based on your needs
            child: Text(
              '$label:',
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 18,
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(value,
            style: TextStyle(
              fontSize: 16,
            ),
            ),
          ),
        ],
      ),
    );
  }
}
