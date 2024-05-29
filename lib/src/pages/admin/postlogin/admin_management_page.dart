import 'package:customerfeedbackapp/src/pages/admin/postlogin/admin_add_page.dart';
import 'package:customerfeedbackapp/src/utils/dataset.dart';
import 'package:flutter/material.dart';

import '../../../widgets/app_bar_title.dart';
import '../../../widgets/custom_back_button.dart';

class AdminManagementPage extends StatefulWidget {
  const AdminManagementPage({super.key});

  @override
  State<AdminManagementPage> createState() => _AdminManagementPageState();
}

class _AdminManagementPageState extends State<AdminManagementPage> {
  Dataset dataset = Dataset();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 120.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Stack(children: [
              CustomBackButton(onPressed: () {
                _navigateToPreviousPage();
              }),
              const AppBarTitle(pageTitle: 'Admin Management'),
            ]),
          ),
        ),
        Center(
          child: Column(
            children: [
              MenuButton(
                  label: 'Add Admin',
                  onPressed: _navigateToAdminAddPage,
                  icon: Icons.person_add),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: dataset.admins.length,
            itemBuilder: (context, index) =>
                AdminCard(data: dataset.admins[index]),
          ),
        )
      ]),
    );
  }

  void _navigateToPreviousPage() {
    Navigator.of(context).pop();
  }

  void _navigateToAdminAddPage() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const AdminAddPage()));
  }
}

class AdminCard extends StatefulWidget {
  final Map<String, dynamic> data;

  const AdminCard({super.key, required this.data});

  @override
  State<AdminCard> createState() => _AdminCardState();
}

class _AdminCardState extends State<AdminCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      child: Column(
        children: [
          Material(
            elevation: 20.0,
            borderRadius: BorderRadius.circular(12.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0)),
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: width * .8,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          widget.data['displayImageUrl']),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${widget.data['name']} ${widget.data['surname']}',
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 5.0),
                                Text(
                                  '${widget.data['email']}',
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            )
                          ]),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
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

