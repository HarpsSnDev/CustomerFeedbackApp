import 'package:customerfeedbackapp/src/pages/admin/postlogin/admin_account_details_page.dart';
import 'package:customerfeedbackapp/src/pages/admin/postlogin/admin_change_password_page.dart';
import 'package:flutter/material.dart';

import '../../../widgets/app_bar_title.dart';
import '../../../widgets/custom_back_button.dart';

class AdminSettingsPage extends StatefulWidget {
  const AdminSettingsPage({super.key});

  @override
  State<AdminSettingsPage> createState() => _AdminSettingsPageState();
}

class _AdminSettingsPageState extends State<AdminSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: 120.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Stack(children: [
              CustomBackButton(onPressed: () {
                _navigateToPreviousPage();
              }),
              const AppBarTitle(pageTitle: 'Settings'),
            ]),
          ),
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuButton(
                  label: 'Account Details',
                  onPressed: _navigateToAccountDetailsPage,
                  icon: Icons.person),
              const SizedBox(
                height: 20.0,
              ),
              MenuButton(
                  label: 'Change Password',
                  onPressed: _navigateToChangePasswordPage,
                  icon: Icons.lock),
            ],
          ),
        )
      ]),
    );
  }

  void _navigateToPreviousPage() {
    Navigator.of(context).pop();
  }

  void _navigateToAccountDetailsPage() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const AdminAccountDetailsPage()));
  }

  void _navigateToChangePasswordPage() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const AdminChangePasswordPage()));
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: InkWell(
        onTap: () {
          onPressed();
        },
        borderRadius: BorderRadius.circular(width * .1),
        child: Container(
          height: width * .25,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).primaryColor.withBlue(50).withGreen(20),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(width * .1),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w800),
              ),
              Icon(
                icon,
                color: Colors.white,
                size: 40.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
