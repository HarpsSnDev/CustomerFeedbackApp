import 'package:flutter/material.dart';

import 'login_page.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  bool _isPasswordVisible = false;
  bool isSignUp = false;

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
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      Text(
                        "Enter your details to sign up.",
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
                      onPressed: () {},
                      child: isSignUp
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
                              "Sign up",
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
                          builder: (context) => const LoginPage()));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          ' Sign in',
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
}
