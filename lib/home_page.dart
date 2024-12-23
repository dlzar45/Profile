import 'package:flutter/material.dart';
import 'package:my_info/AccountsPage/account_page.dart';
import 'package:my_info/ProjectPage/projects_page.dart';
import 'package:my_info/RatingBarPage/rating_bar_page.dart';
import 'package:my_info/SummaryPage/summary_page.dart';
import 'package:my_info/info_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    void _shareProfile() {
      // Handle the feedback submission logic here (e.g., send to server, save locally)
      // For demonstration, we'll just show a snackbar with the rating and opinion
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Copied The Profile URL'),
        ),
      );
    }

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
                child: Column(
                  children: [
                    const Row(
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
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "Dlzar Pshtiwan",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "dlzar.22@gmail.com",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    InfoTile(
                      icons: Icons.folder_open,
                      title: "My Projects",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProjectsPage()));
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InfoTile(
                      icons: Icons.person,
                      title: "Accounts",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AccountPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InfoTile(
                      icons: Icons.share,
                      title: "Share With Frends",
                      onTap: () {
                        _shareProfile();
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InfoTile(
                      icons: Icons.token,
                      title: "Review",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RateProfilePage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InfoTile(
                      icons: Icons.info,
                      title: "Info",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SummaryPage(),
                          ),
                        );
                      },
                    ),
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
