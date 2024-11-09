import 'package:flutter/material.dart';
import '../screens/therapy/therapy_detail_screen.dart';

class TherapyCard extends StatelessWidget {
  final String title;
  final String description;

  TherapyCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>
                TherapyDetailScreen(title: title, description: description),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}
