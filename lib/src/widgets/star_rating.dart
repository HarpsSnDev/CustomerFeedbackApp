import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  final int maxRating;
  final Function(int) onRatingChanged;
  final int initialRating;

  StarRating({
    this.maxRating = 5,
    required this.onRatingChanged,
    this.initialRating = 4,
  });

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  int _currentRating = 0;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.maxRating, (index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _currentRating = index + 1;
            });
            widget.onRatingChanged(_currentRating);
          },
          child: Icon(
            index < _currentRating ? Icons.star : Icons.star_border,
            size: 30.0,
            color: const Color(0XFFFFD700),
          ),
        );
      }),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Star Rating Example'),
      ),
      body: Center(
        child: StarRating(
          maxRating: 5,
          initialRating: 0,
          onRatingChanged: (rating) {
            print("New Rating: $rating");
          },
        ),
      ),
    ),
  ));
}
