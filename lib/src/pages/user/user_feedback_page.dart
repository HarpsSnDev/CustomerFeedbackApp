import 'package:flutter/material.dart';

import '../../widgets/app_bar_title.dart';
import '../../widgets/custom_back_button.dart';
import '../../widgets/star_rating.dart';

class UserFeedbackPage extends StatefulWidget {
  const UserFeedbackPage({super.key});

  @override
  State<UserFeedbackPage> createState() => _UserFeedbackPageState();
}

class _UserFeedbackPageState extends State<UserFeedbackPage> {
  //User Info
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();

  //Feedback info
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  bool _isSubmitting = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        children: [
          SizedBox(
            height: 120.0,
            child: Stack(children: [
              CustomBackButton(onPressed: () {
                _navigateToPreviousPage();
              }),
              const AppBarTitle(pageTitle: 'Submit Feedback'),
            ]),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Personal Info',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'First Name',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: width * .04,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: height * .005,
                  ),
                  SizedBox(
                    height: height * .08,
                    child: TextFormField(
                      controller: _firstNameController,
                      style: TextStyle(
                          color: Colors.grey[800]!,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Colors.grey[200]!),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Colors.grey[200]!),
                              borderRadius: BorderRadius.circular(10)),
                          hintStyle: TextStyle(
                              color: Colors.grey[800]!,
                              fontWeight: FontWeight.w600),
                          hintText: 'i.e. John'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * .05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Last Name',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: width * .04,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: height * .005,
                  ),
                  SizedBox(
                    height: height * .08,
                    child: TextFormField(
                      controller: _lastNameController,
                      style: TextStyle(
                          color: Colors.grey[800]!,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Colors.grey[200]!),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Colors.grey[200]!),
                              borderRadius: BorderRadius.circular(10)),
                          hintStyle: TextStyle(
                              color: Colors.grey[800]!,
                              fontWeight: FontWeight.w600),
                          hintText: 'i.e. Doe'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * .05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: width * .04,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: height * .005,
                  ),
                  SizedBox(
                    height: height * .08,
                    child: TextFormField(
                      controller: _emailController,
                      style: TextStyle(
                          color: Colors.grey[800]!,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Colors.grey[200]!),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Colors.grey[200]!),
                              borderRadius: BorderRadius.circular(10)),
                          hintStyle: TextStyle(
                              color: Colors.grey[800]!,
                              fontWeight: FontWeight.w600),
                          hintText: 'i.e. john.doe@mail.com'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * .05,
              ),
              const Text(
                'Feedback Info',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: width * .04,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: height * .005,
                  ),
                  SizedBox(
                    height: height * .08,
                    child: TextFormField(
                      controller: _titleController,
                      style: TextStyle(
                          color: Colors.grey[800]!,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Colors.grey[200]!),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Colors.grey[200]!),
                              borderRadius: BorderRadius.circular(10)),
                          hintStyle: TextStyle(
                              color: Colors.grey[800]!,
                              fontWeight: FontWeight.w600),
                          hintText: 'Enter feedback title'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * .05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: width * .04,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: height * .005,
                  ),
                  SizedBox(
                    height: height * .18,
                    child: TextFormField(
                      controller: _descriptionController,
                      expands: true,
                      maxLines: null,
                      textAlignVertical: TextAlignVertical.top,
                      keyboardType: TextInputType.multiline,
                      style: TextStyle(
                          color: Colors.grey[800]!,
                          fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Colors.grey[200]!),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2.0, color: Colors.grey[200]!),
                              borderRadius: BorderRadius.circular(10)),
                          hintStyle: TextStyle(
                              color: Colors.grey[800]!,
                              fontWeight: FontWeight.w600),
                          hintText: 'Enter description here'),
                    ),
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 140.0,
                    width: 140.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      border: Border.all(width: 2.0, color: Colors.grey),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Attach Image',
                          style: TextStyle(
                              color: Colors.grey[900], fontSize: 16.0),
                        ),
                        const SizedBox(height: 5.0),
                        Icon(Icons.attachment,
                            color: Colors.grey[600], size: 36.0)
                      ],
                    ),
                  ),
                  SizedBox(
                      width: 160.0,
                      child: Column(children: [
                        Text(
                          'Rate Service',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: width * .04,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 10.0),
                        StarRating(onRatingChanged: (rating) {}),
                      ]))
                ],
              )
            ],
          ),
          SizedBox(height: height * .05),
          SizedBox(
            width: double.infinity,
            height: height * .1,
            child: ElevatedButton(
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(30.0),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColor)),
              onPressed: () {},
              child: _isSubmitting
                  ? const Center(
                      child: SizedBox(
                        height: 20.0,
                        width: 20.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.white),
                        ),
                      ),
                    )
                  : const Text(
                      "Submit feedback",
                      style: TextStyle(color: Colors.white),
                    ),
            ),
          ),
          const SizedBox(height: 30.0)
        ],
      ),
    );
  }

  void _navigateToPreviousPage() {
    Navigator.of(context).pop();
  }
}
