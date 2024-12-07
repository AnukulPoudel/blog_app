import 'package:blog_app/features/auth/presentation/widgets/auth_bottom_text.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field_text.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign Up.",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            AuthField(
              hintText: 'Email',
            ),
            SizedBox(height: 15),
            AuthField(
              hintText: 'Name',
            ),
            SizedBox(height: 15),
            AuthField(hintText: 'Password'),
            SizedBox(height: 20),
            AuthGradientButton(
              textMessage: 'Sign Up',
            ),
            SizedBox(height: 3),
            AuthBottomText(
              messageFirst: "Don't have an account? ",
              messageSecond: "Sign In",
            ),
          ],
        ),
      ),
    );
  }
}
