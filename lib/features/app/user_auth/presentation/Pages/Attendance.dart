import 'package:flutter/material.dart';

class AttendancePage extends StatelessWidget {
  const AttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("Attendance",
        style: TextStyle(fontWeight: FontWeight.w600),),
        actions: [
          Container(
            
          ),
        ],
      ),
    );
  }
}