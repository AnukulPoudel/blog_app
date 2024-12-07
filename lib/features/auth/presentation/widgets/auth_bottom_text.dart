import 'package:blog_app/core/themes/app_palate.dart';
import 'package:flutter/material.dart';

class AuthBottomText extends StatelessWidget {
  final String messageFirst, messageSecond;
  const AuthBottomText(
      {super.key, required this.messageFirst, required this.messageSecond});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: messageFirst,
        style: Theme.of(context).textTheme.titleMedium,
        children: [
          TextSpan(
            text: messageSecond,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppPallete.gradient2,
                ),
          ),
        ],
      ),
    );
  }
}
