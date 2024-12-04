import 'package:flutter/material.dart';
import 'package:my_info/info_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                child: Image.asset(
                  'images/backimg.jpg',
                  height: 350,
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.only(
                  top: 250, bottom: 100, left: 30, right: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Icon(Icons.settings),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Icon(Icons.bookmark),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Dlzar Pshtiwan",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "dlzar.22@gmail.com",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    InfoTile(icons: Icons.folder_open, title: "My Projects"),
                    SizedBox(
                      height: 10,
                    ),
                    InfoTile(icons: Icons.person, title: "Accounts"),
                    SizedBox(
                      height: 10,
                    ),
                    InfoTile(icons: Icons.share, title: "Share With Frends"),
                    SizedBox(
                      height: 10,
                    ),
                    InfoTile(icons: Icons.token, title: "Review"),
                    SizedBox(
                      height: 10,
                    ),
                    InfoTile(icons: Icons.info, title: "Info"),
                  ],
                ),
              ),
            ),

            // This Is Your image Profile

            const Positioned(
              top: 180,
              left: 150,
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("images/photo.jpg"),
              ),
            ),

            // This a Profile text

            const Positioned(
              top: 100,
              left: 10,
              child: Text(
                "Profile",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),

            Positioned(
              top: 870,
              left: 50,
              child: Container(
                width: 340,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)),
                child: const Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
