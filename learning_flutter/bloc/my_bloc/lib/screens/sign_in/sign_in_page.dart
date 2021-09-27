import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static const String routeName = '/sign-in-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            'Sing In',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(
              hintText: 'Email',
            ),
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              hintText: 'Password',
            ),
            autocorrect: false,
            obscureText: true,
          )
        ],
      ),
    );
  }
}
