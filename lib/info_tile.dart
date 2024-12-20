import 'package:flutter/material.dart';

void Function()? onTap;

class InfoTile extends StatelessWidget {
  final IconData icons;
  final String title;
  const InfoTile({super.key, required this.icons, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Icon(
          icons,
          size: 24,
          color: Colors.grey[800],
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, color: Colors.grey[800]),
        ),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}
