import 'package:flutter/material.dart';

class CatharsisTherapyScreen extends StatelessWidget {
  const CatharsisTherapyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Catharsis Therapy",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Illustration
              Container(
                height: 300,
                width: 300,
                child: Image.asset(
                    'assets/images/catharsis_illustration.png'), // Replace with your image
              ),
              SizedBox(height: 24),

              // Title and Description
              Text(
                "Express Whatever's\non Your Mind!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),

              // Record, Accept, and Reject buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.red, size: 40),
                    onPressed: () {
                      // Handle reject action
                    },
                  ),
                  SizedBox(width: 40),
                  IconButton(
                    icon: Icon(Icons.mic, color: Colors.orange, size: 60),
                    onPressed: () {
                      // Handle record action
                    },
                  ),
                  SizedBox(width: 40),
                  IconButton(
                    icon: Icon(Icons.check, color: Colors.green, size: 40),
                    onPressed: () {
                      // Handle accept action
                    },
                  ),
                ],
              ),
              SizedBox(height: 8),

              // Subtitle
              Text(
                "Say it loud!",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
