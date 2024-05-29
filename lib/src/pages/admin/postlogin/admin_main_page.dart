import 'package:customerfeedbackapp/src/pages/admin/postlogin/admin_customer_feedback_page.dart';
import 'package:customerfeedbackapp/src/pages/admin/postlogin/admin_settings_page.dart';
import 'package:flutter/material.dart';

import '../prelogin/login_page.dart';
import 'admin_management_page.dart';

class AdminMainPage extends StatefulWidget {
  const AdminMainPage({super.key});

  @override
  State<AdminMainPage> createState() => _AdminMainPageState();
}

class _AdminMainPageState extends State<AdminMainPage> {
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
              'Admin Hub',
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
            height: width * .9,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MainButton(
                        label: 'Customer\nFeedback',
                        onPressed: () {
                          _navigateTo(const AdminCustomerFeedbackPage());
                        },
                        icon: Icons.feedback_rounded),
                    MainButton(
                        label: 'Admin\nManagement',
                        onPressed: () {
                          _navigateTo(const AdminManagementPage());
                        },
                        icon: Icons.admin_panel_settings),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MainButton(
                        label: 'Settings',
                        onPressed: () {
                          _navigateTo(const AdminSettingsPage());
                        },
                        icon: Icons.settings),
                    MainButton(
                        label: 'Sign Out',
                        onPressed: () {
                          _navigateTo(const LoginPage());
                        },
                        icon: Icons.logout),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }

  void _navigateTo(Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }
}

class MainButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final IconData icon;
  const MainButton(
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
      borderRadius: BorderRadius.circular(width * .1),
      child: Container(
        height: width * .4,
        width: width * .4,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).primaryColor.withBlue(50).withGreen(20),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(width * .1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
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
