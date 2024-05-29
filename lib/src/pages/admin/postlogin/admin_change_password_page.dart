import 'package:flutter/material.dart';

import '../../../widgets/app_bar_title.dart';
import '../../../widgets/custom_back_button.dart';

class AdminChangePasswordPage extends StatefulWidget {
  const AdminChangePasswordPage({super.key});

  @override
  State<AdminChangePasswordPage> createState() =>
      _AdminChangePasswordPageState();
}

class _AdminChangePasswordPageState extends State<AdminChangePasswordPage> {
  final _passwordController = TextEditingController();
  final _passwordConfirmController = TextEditingController();
  bool _isPasswordVisible = false, _isPasswordConfirmVisible = false, _isChangingPassword = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(children: [
          SizedBox(
            height: 120.0,
            child: Stack(children: [
              CustomBackButton(onPressed: () {
                _navigateToPreviousPage();
              }),
              const AppBarTitle(pageTitle: 'Change Password'),
            ]),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New Password',
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
                  controller: _passwordController,
                  style: TextStyle(
                      color: Colors.grey[800]!, fontWeight: FontWeight.w600),
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.grey[200]!),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.grey[200]!),
                          borderRadius: BorderRadius.circular(10)),
                      hintStyle: TextStyle(
                          color: Colors.grey[800]!,
                          fontWeight: FontWeight.w600),
                      suffixIconColor: Theme.of(context).primaryColor,
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                          child: Icon(!_isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      hintText: 'password'),
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
                'Confirm Password',
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
                  controller: _passwordConfirmController,
                  style: TextStyle(
                      color: Colors.grey[800]!, fontWeight: FontWeight.w600),
                  obscureText: !_isPasswordConfirmVisible,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.grey[200]!),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.grey[200]!),
                          borderRadius: BorderRadius.circular(10)),
                      hintStyle: TextStyle(
                          color: Colors.grey[800]!,
                          fontWeight: FontWeight.w600),
                      suffixIconColor: Theme.of(context).primaryColor,
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              _isPasswordConfirmVisible =
                                  !_isPasswordConfirmVisible;
                            });
                          },
                          child: Icon(!_isPasswordConfirmVisible
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      hintText: 'password'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * .05,
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
                          child: _isChangingPassword
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
        ]),
      ),
    );
  }

  void _navigateToPreviousPage() {
    Navigator.of(context).pop();
  }
}
