import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/theme.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 40),
          ),
        ),
        Text(
          'Access account',
          style: TextStyle(
              color: ThemeColors().greyish,
              // fontWeight: FontWeight.w100,
              fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 16)),
        )
      ],
    );
  }
}
