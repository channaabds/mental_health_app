import 'package:flutter/material.dart';
import '../../widgets/therapy_card.dart';

class TherapyListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(16.0),
      children: [
        TherapyCard(title: 'Art Therapy', description: 'Express through art'),
        TherapyCard(title: 'CB Therapy', description: 'Change behavior'),
      ],
    );
  }
}
