import 'package:flutter/material.dart';

import '../../../widgets/app_bar_title.dart';
import '../../../widgets/custom_back_button.dart';

class AdminAccountDetailsPage extends StatefulWidget {
  const AdminAccountDetailsPage({super.key});

  @override
  State<AdminAccountDetailsPage> createState() =>
      _AdminAccountDetailsPageState();
}

class _AdminAccountDetailsPageState extends State<AdminAccountDetailsPage> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  // final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  final _joinedDateController = TextEditingController();
  final _accountVerifiedController = TextEditingController();

  bool _isUpdating = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
                const AppBarTitle(pageTitle: 'Account Details'),
              ]),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                            'Email Address',
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
                                  hintText: 'i.e. John.doe@gmail.com'),
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
                            'Joined Date',
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
                              controller: _joinedDateController,
                              enabled: false,
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
                              ),
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
                            'Account Verified',
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
                              controller: _accountVerifiedController,
                              enabled: false,
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
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * .05,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: height * .1,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(30.0),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0))),
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).primaryColor)),
                          onPressed: () {},
                          child: _isUpdating
                              ? const Center(
                                  child: SizedBox(
                                    height: 20.0,
                                    width: 20.0,
                                    child: CircularProgressIndicator(
                                      valueColor:
                                          AlwaysStoppedAnimation(Colors.white),
                                    ),
                                  ),
                                )
                              : const Text(
                                  "Update",
                                  style: TextStyle(color: Colors.white),
                                ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _initializeValues();
  }

  void _navigateToPreviousPage() {
    Navigator.of(context).pop();
  }

  void _initializeValues() {
    setState(() {
      _firstNameController.text = 'Thandeka';
      _lastNameController.text = "Selepe";
      _emailController.text = "t.selepe@example.com";
      _joinedDateController.text = '12-04-2023, 16:32 PM';
      _accountVerifiedController.text = 'True';
    });
  }
}
