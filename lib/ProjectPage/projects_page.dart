import 'package:flutter/material.dart';
import 'package:my_info/ProjectPage/profile_widget.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "All My Projects is Here",
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  "There is some simple projects I made",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProfileWidget(
                    imageUrl: "images/1.png",
                    title: "First",
                    subtitle: "Used For This..",
                  ),
                  ProfileWidget(
                    imageUrl: "images/2.png",
                    title: "Second",
                    subtitle: "Used For This..",
                  ),
                  ProfileWidget(
                    imageUrl: "images/3.jpg",
                    title: "Third",
                    subtitle: "Used For This..",
                  ),
                  ProfileWidget(
                    imageUrl: "images/4.jpg",
                    title: "Forth",
                    subtitle: "Used For This..",
                  ),
                  ProfileWidget(
                    imageUrl: "images/5.png",
                    title: "Fifth",
                    subtitle: "Used For This..",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}