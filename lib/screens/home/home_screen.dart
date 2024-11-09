import 'package:flutter/material.dart';
import 'package:mental_health_app/widgets/bottom_nav_bar.dart';
import 'therapy_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choose Your Therapy")),
      body: TherapyListScreen(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
