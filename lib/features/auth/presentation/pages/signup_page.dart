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
  final emailTextEditingController = TextEditingController();
  final nameTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();
  final globalKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailTextEditingController.dispose();
    nameTextEditingController.dispose();
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
                "Sign Up.",
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
                controller: nameTextEditingController,
                hintText: 'Name',
              ),
              const SizedBox(height: 15),
              AuthField(
                hintText: 'Password',
                controller: passwordTextEditingController,
                isObscureText: true,
              ),
              const SizedBox(height: 20),
              const AuthGradientButton(
                textMessage: 'Sign Up',
              ),
              const SizedBox(height: 3),
              const AuthBottomText(
                messageFirst: "Don't have an account? ",
                messageSecond: "Sign In",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
