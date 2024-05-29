import 'package:flutter/material.dart';

class ViewRating extends StatefulWidget {
  final double maxRating;
  final double initialRating;

  ViewRating({
    this.maxRating = 5.0,
   required this.initialRating,
  });

  @override
  _ViewRatingState createState() => _ViewRatingState();
}

class _ViewRatingState extends State<ViewRating> {
  double _currentRating = 0;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate((widget.maxRating).toInt(), (index) {
        return  Icon(
            index < _currentRating ? Icons.star : Icons.star_border,
            size: 30.0,
            color: const Color(0XFFFFD700),
          
        );
      }),
    );
  }
}
