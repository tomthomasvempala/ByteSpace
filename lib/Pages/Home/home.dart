import 'dart:ui';

import 'package:byteSpace/Pages/Home/Widgets/posts.dart';
import 'package:byteSpace/themeData.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.grey,
      appBar: AppBar(
        backgroundColor: AppTheme.grey,
        elevation: 0,
        title: Row(
          children: [
            Text(
              "Byte",
              style: TextStyle(color: AppTheme.blue),
            ),
            Text(
              "Space",
              style: TextStyle(color: AppTheme.darkBlue),
            )
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.add_circle_outline,
                color: AppTheme.darkBlue,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.notifications, color: AppTheme.darkBlue),
              onPressed: () {})
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Hey Denin",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("Checkout the latest Bytes",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400)),
          ),
          SizedBox(
            height: 12,
          ),
          Posts()
        ],
      ),
    );
  }
}
