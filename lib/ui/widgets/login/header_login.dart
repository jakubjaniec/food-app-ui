import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/theme.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CustomTheme theme = CustomTheme();

    return Column(
      children: [
        Text(
          'Login',
          style: TextStyle(
            color: theme.creamy,
            fontWeight: FontWeight.w700,
            fontSize: theme.getAdaptiveTextSize(context, 40),
          ),
        ),
        Text(
          'Access account',
          style: TextStyle(
            color: theme.blueGrey,
            // fontWeight: FontWeight.w100,
            fontSize: theme.getAdaptiveTextSize(context, 16),
          ),
        )
      ],
    );
  }
}
