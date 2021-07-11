import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class AuthUI extends StatelessWidget {
  //const AuthUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          continueWithPhone(context),
          continueWithGoogle(),
          continueWithFacebook(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("OR"),
          ),
          continueWithEmail()
        ],
      ),
    );
  }

  Widget continueWithPhone(context) {
    return SizedBox(
      width: 220,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/phone-auth');
        },
        child: Row(
          children: [
            Icon(Icons.phone_iphone_outlined),
            SizedBox(
              width: 8,
            ),
            Text("Continue with phone"),
          ],
        ),
      ),
    );
  }

  Widget continueWithGoogle() {
    return SignInButton(Buttons.Google, onPressed: () {});
  }

  Widget continueWithFacebook() {
    return SignInButton(Buttons.Facebook, onPressed: () {});
  }

  Widget continueWithEmail() {
    return SignInButton(Buttons.Email, onPressed: () {});
  }
}
