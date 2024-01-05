import 'package:flutter/material.dart';

class SubjectPage extends StatelessWidget {
  const SubjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("Subjects",
        style: TextStyle(fontWeight: FontWeight.w600),),
        actions: [
          Container(
            
          ),
        ],
      ),
    );
  }
}