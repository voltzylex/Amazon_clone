import 'package:amazon_clone/constants/global_variable.dart';
import 'package:flutter/material.dart';

enum Auth { signin, signup }

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Welcome',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
            ),
            ListTile(
              leading: Radio(
                  value: Auth.signup,
                  groupValue: _auth,
                  activeColor: GlobalVariable.secondaryColor,
                  onChanged: (Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  }),
              title: Text(
                'Create Account',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
