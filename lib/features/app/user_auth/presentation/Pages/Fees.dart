import 'package:flutter/material.dart';

class FeesPage extends StatelessWidget {
  const FeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("Fees",
        style: TextStyle(fontWeight: FontWeight.w600),),
        actions: [
          Container(
            
          ),
        ],
      ),
    );
  }
}