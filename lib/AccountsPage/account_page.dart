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
                  backgroundImage: AssetImage('images/photo.jpg'),
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dlzar Pshtiwan',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'All Acounts is Here',
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
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.telegram, color: Colors.lightBlue),
                    title: Text('Telegram'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.email, color: Colors.pink),
                    title: Text('Email'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.phone, color: Colors.blueAccent),
                    title: Text('Phone'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.youtube_searched_for, color: Colors.red),
                    title: Text('YouTube'),
                    onTap: () {},
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
