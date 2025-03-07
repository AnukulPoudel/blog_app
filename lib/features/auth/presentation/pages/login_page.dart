import 'package:blog_app/features/auth/presentation/pages/signup_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_bottom_text.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field_text.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class LoginInPage extends StatefulWidget {
  static MaterialPageRoute get route => MaterialPageRoute(
    builder: (context) {
      return const LoginInPage();
    },
  );

  const LoginInPage({super.key});

  @override
  State<LoginInPage> createState() => _LoginInPageState();
}

class _LoginInPageState extends State<LoginInPage> {
  final emailTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();
  final globalKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailTextEditingController.dispose();
    passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: globalKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign In.",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              AuthField(
                hintText: 'Email',
                controller: emailTextEditingController,
              ),
              const SizedBox(height: 15),
              AuthField(
                hintText: 'Password',
                controller: passwordTextEditingController,
                isObscureText: true,
              ),
              const SizedBox(height: 20),
              const AuthGradientButton(
                textMessage: 'Sign In',
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () async =>
                    await Navigator.push(context, SignUpPage.route),
                child: const AuthBottomText(
                  messageFirst: "Don't have an account? ",
                  messageSecond: "Sign Up",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
