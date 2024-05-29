import 'package:flutter/material.dart';

import '../postlogin/admin_main_page.dart';
import 'create_account_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false, isLoggingIn = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          children: [
            SizedBox(height: height * .1),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * .1, vertical: height * .05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      Text(
                        "Enter your admin credentials to sign in.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: width * .04,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: height * .05,
                      ),
                    ],
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
                          controller: _usernameController,
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
                                      width: 2.0,
                                      color: Theme.of(context).primaryColor),
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0, color: Colors.grey[200]!),
                                  borderRadius: BorderRadius.circular(10)),
                              hintStyle: TextStyle(
                                  color: Colors.grey[800]!,
                                  fontWeight: FontWeight.w600),
                              hintText: 'Enter your email'),
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
                        'Password',
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
                              color: Colors.grey[800]!,
                              fontWeight: FontWeight.w600),
                          obscureText: !_isPasswordVisible,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0,
                                      color: Theme.of(context).primaryColor),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0,
                                      color: Theme.of(context).primaryColor),
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0, color: Colors.grey[200]!),
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
                              hintText: 'Enter your Password'),
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
                                  borderRadius: BorderRadius.circular(10.0))),
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColor)),
                      onPressed: () {
                        _gotoAdminMainPage();
                      },
                      child: isLoggingIn
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
                              "Sign in",
                              style: TextStyle(color: Colors.white),
                            ),
                    ),
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CreateAccountPage()));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          ' Sign up',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _gotoAdminMainPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const AdminMainPage()));
  }
}
