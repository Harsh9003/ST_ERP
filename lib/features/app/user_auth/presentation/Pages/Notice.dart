import 'package:flutter/material.dart';

class NoticePage extends StatelessWidget {
  const NoticePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("Notice from School",
        style: TextStyle(fontWeight: FontWeight.w600),),
        actions: [
          Container(
            
          ),
        ],
      ),
    );
  }
}