import 'package:flutter/material.dart';


class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  // Function to launch URLs
  // void _launchURL(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Social Accounts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile picture and name
            const Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/profile_picture.png'),
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Name',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Your Bio',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 24.0),
            // Social accounts list
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.facebook, color: Colors.blue),
                    title: Text('Facebook'),
                    onTap: () {
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.telegram, color: Colors.lightBlue),
                    title: Text('Twitter'),
                    onTap: () {
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.email, color: Colors.pink),
                    title: Text('Instagram'),
                    onTap: () {
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.phone, color: Colors.blueAccent),
                    title: Text('LinkedIn'),
                    onTap: () {
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.youtube_searched_for, color: Colors.red),
                    title: Text('YouTube'),
                    onTap: () {
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}