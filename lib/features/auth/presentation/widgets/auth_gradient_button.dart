import 'package:blog_app/core/themes/app_palate.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String textMessage;
  const AuthGradientButton({super.key, required this.textMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: const LinearGradient(
          colors: [
            AppPallete.gradient1,
            AppPallete.gradient2,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor,
          fixedSize: const Size(355, 55),
        ),
        onPressed: () {},
        child: Text(
          textMessage,
          style: const TextStyle(
            fontSize: 17,
            color: AppPallete.whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
