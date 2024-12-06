import 'package:blog_app/core/themes/app_palate.dart';
import 'package:flutter/material.dart';

class AuthBottomText extends StatelessWidget {
  const AuthBottomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?"),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Sign In",
            style: TextStyle(
              color: AppPallete.gradient2,
            ),
          ),
        )
      ],
    );
  }
}
