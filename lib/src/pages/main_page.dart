import 'package:customerfeedbackapp/src/pages/user/user_feedback_page.dart';
import 'package:flutter/material.dart';

import 'admin/prelogin/login_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
      children: [
        const Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 80.0),
            child: Text(
              'Get Started',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 40.0),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: width,
            height: width * .4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MenuButton(
                    label: 'User',
                    onPressed: _navigateToUserFeedbackPage,
                    icon: Icons.person),
                MenuButton(
                    label: 'Admin',
                    onPressed: _navigateToLoginPage,
                    icon: Icons.shield),
              ],
            ),
          ),
        ),
      ],
    ));
  }

  void _navigateToLoginPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  void _navigateToUserFeedbackPage() {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const UserFeedbackPage()));
  }
}

class MenuButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final IconData icon;
  const MenuButton(
      {super.key,
      required this.label,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: width * .4,
        width: width * .4,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).primaryColor.withBlue(50).withGreen(20),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(width * .1)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Icon(
              icon,
              color: Colors.white,
              size: 40.0,
            )
          ],
        ),
      ),
    );
  }
}
