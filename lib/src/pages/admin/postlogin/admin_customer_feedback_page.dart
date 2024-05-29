import 'package:customerfeedbackapp/src/widgets/custom_back_button.dart';
import 'package:customerfeedbackapp/src/widgets/app_bar_title.dart';
import 'package:customerfeedbackapp/src/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';

import '../../../utils/dataset.dart';
import '../../../widgets/view_rating.dart';

class AdminCustomerFeedbackPage extends StatefulWidget {
  const AdminCustomerFeedbackPage({super.key});

  @override
  State<AdminCustomerFeedbackPage> createState() =>
      _AdminCustomerFeedbackPageState();
}

class _AdminCustomerFeedbackPageState extends State<AdminCustomerFeedbackPage> {
  Dataset dataset = Dataset();

  Widget searchIcon() {
    return const Align(
      alignment: Alignment.centerRight,
      child: Icon(Icons.search, size: 40.0, color: Colors.black),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 120.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Stack(children: [
              CustomBackButton(onPressed: () {
                _navigateToPreviousPage();
              }),
              const AppBarTitle(pageTitle: 'Customer Feedback'),
            ]),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: dataset.feedbacks.length,
            itemBuilder: (context, index) =>
                FeedbackItem(data: dataset.feedbacks[index]),
          ),
        ),
      ],
    ));
  }

  void _navigateToPreviousPage() {
    Navigator.of(context).pop();
  }
}

class FeedbackItem extends StatefulWidget {
  final Map<String, dynamic> data;
  const FeedbackItem({super.key, required this.data});

  @override
  State<FeedbackItem> createState() => _FeedbackItemState();
}

class _FeedbackItemState extends State<FeedbackItem> {
  Widget initialOutlineCircle() {
    return Container(
      height: 30.0,
      width: 30.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 2.0,
          color: Theme.of(context).primaryColor,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        widget.data['name'].toString().substring(0, 1),
        style: const TextStyle(
            color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget fullName() {
    return Text(
      '${widget.data['name']} ${widget.data['surname']}',
      style: const TextStyle(
          color: Colors.black, fontWeight: FontWeight.w800, fontSize: 18.0),
    );
  }

  Widget title() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        widget.data['title'],
        style: const TextStyle(
            color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget description() {
    return Text(
      widget.data['description'],
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          color: Colors.grey[600], fontSize: 13.0, fontWeight: FontWeight.w600),
    );
  }

  Widget divider() {
    return Container(
      height: 1.0,
      width: double.infinity,
      color: Theme.of(context).primaryColor,
    );
  }

  Widget dateTimeSent() {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        width: width * .7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.timelapse,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              widget.data['dateTimeSent'],
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  initialOutlineCircle(),
                  const SizedBox(
                    
                    width: 20.0,
                  ),
                  fullName(),
                ],
              ),
            ],
          ),
          title(),
          description(),
          ViewRating(initialRating: widget.data['rating']),
          dateTimeSent(),
          divider()
        ],
      ),
    );
  }
}
