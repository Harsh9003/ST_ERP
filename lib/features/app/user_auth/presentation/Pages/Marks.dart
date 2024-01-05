import 'package:flutter/material.dart';

class MarksPage extends StatelessWidget {
  const MarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("Marks",
        style: TextStyle(fontWeight: FontWeight.w600),),
        actions: [
          Container(
            
          ),
        ],
      ),
    );
  }
}