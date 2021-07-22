import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Account"),
        ),
        body: builder());
  }

  Widget builder() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: [
          ListTile(
            title: Text(
              "Oliver Mendez A. \nolivermendez",
            ),
            leading: Icon(
              Icons.account_circle_outlined,
              size: 40,
            ),
            onTap: () {},
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text("Settings",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 11),
            child: Container(
              alignment: Alignment.centerLeft,
              transformAlignment: AlignmentDirectional.topStart,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Notification Settings',
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Currency: DOP          ',
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text("Support",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 11),
            child: Container(
              alignment: Alignment.centerLeft,
              transformAlignment: AlignmentDirectional.topStart,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Help Center             ',
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'App Feedback          ',
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text("About",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 11),
            child: Container(
              alignment: Alignment.centerLeft,
              transformAlignment: AlignmentDirectional.topStart,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'User Agreement             ',
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Privacy Policy                  ',
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(child: Text("Version: 1.2"))
        ],
      ),
    );
  }
}
