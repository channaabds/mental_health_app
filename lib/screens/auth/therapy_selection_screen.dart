import 'package:flutter/material.dart';
import 'catharsis_therapy_screen.dart'; // Import Catharsis Therapy Screen

class TherapySelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(
                'assets/images/Chana.jpg'), // Replace with your profile image path
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, Channa",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
                height:
                    4), // Adjust the space between the greeting and the next text
            Text(
              "How are you today?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Removed the separate "How are you today?" text from here
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search anything here...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Choose Your Therapy",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child:
                      Text("See All", style: TextStyle(color: Colors.orange)),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: TherapyOptionList(), // Therapy Cards as a vertical list
            ),
            SizedBox(height: 16),
            TherapyCategoryFilters(), // Therapy Category Filters
          ],
        ),
      ),
      bottomNavigationBar:
          CustomBottomNavigationBar(), // Custom bottom navigation bar
    );
  }
}

// Therapy Options List with Navigation to Catharsis Therapy Screen
class TherapyOptionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TherapyCard(
            title: 'Art Therapy',
            color: Colors.orangeAccent,
            imagePath:
                'assets/images/art_therapy.png', // Replace with your asset path
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CatharsisTherapyScreen(),
                ),
              );
            },
          ),
          SizedBox(width: 16),
          TherapyCard(
            title: 'CB Therapy',
            color: Colors.deepOrangeAccent,
            imagePath:
                'assets/images/cb_therapy.png', // Replace with your asset path
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CatharsisTherapyScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Therapy Card Widget with Gesture for Navigation and Enlarged Image
class TherapyCard extends StatelessWidget {
  final String title;
  final Color color;
  final String imagePath;
  final VoidCallback onTap;

  TherapyCard({
    required this.title,
    required this.color,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 180, // Increased width for larger image
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: 120, // Enlarged image height
              fit: BoxFit.contain,
            ),
            SizedBox(height: 12),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18, // Increased font size
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              'Therapy',
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Therapy Category Filters with State Management
class TherapyCategoryFilters extends StatefulWidget {
  @override
  _TherapyCategoryFiltersState createState() => _TherapyCategoryFiltersState();
}

class _TherapyCategoryFiltersState extends State<TherapyCategoryFilters> {
  final List<String> categories = ["All", "Calm", "Anxious", "Relax"];
  String selectedCategory = "All";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((category) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: ChoiceChip(
              label: Text(category),
              selected: selectedCategory == category,
              onSelected: (selected) {
                setState(() {
                  selectedCategory = category;
                });
              },
              selectedColor: Colors.orangeAccent,
              backgroundColor: Colors.grey[200],
              labelStyle: TextStyle(
                color:
                    selectedCategory == category ? Colors.white : Colors.black,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

// Custom Bottom Navigation Bar Widget
class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home, color: Colors.orange, size: 30),
          Icon(Icons.explore, color: Colors.grey, size: 30),
          Icon(Icons.chat, color: Colors.grey, size: 30),
          Icon(Icons.person, color: Colors.grey, size: 30),
        ],
      ),
    );
  }
}
