import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RateProfilePage extends StatefulWidget {
  const RateProfilePage({super.key});

  @override
  _RateProfilePageState createState() => _RateProfilePageState();
}

class _RateProfilePageState extends State<RateProfilePage> {
  double _rating = 0.0;
  final TextEditingController _controller = TextEditingController();

  void _submitFeedback() {
    final String opinion = _controller.text;
    // Handle the feedback submission logic here (e.g., send to server, save locally)
    // For demonstration, we'll just show a snackbar with the rating and opinion
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Rating: $_rating\nOpinion: $opinion'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rate My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rate my profile',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Center(
              child: RatingBar.builder(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  setState(() {
                    _rating = rating;
                  });
                },
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'Your opinion',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _controller,
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Write your opinion here...',
              ),
            ),
            SizedBox(height: 24.0),
            Center(
              child: ElevatedButton(
                onPressed: _submitFeedback,
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
