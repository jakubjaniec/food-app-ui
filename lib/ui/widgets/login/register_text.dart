import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/theme.dart';

class RegisterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CustomTheme theme = CustomTheme();

    final TextStyle registerStyle = TextStyle(
      color: Colors.deepPurple[600],
      fontWeight: FontWeight.w700,
      fontSize: theme.getAdaptiveTextSize(context, 15.5),
    );

    final TextStyle style = TextStyle(
      color: theme.pinkGrey,
      fontSize: theme.getAdaptiveTextSize(context, 15.5),
    );

    return RichText(
      text: TextSpan(
        style: style,
        text: "Dont't have an account?",
        children: [
          TextSpan(
            style: registerStyle,
            text: '  Register',
          ),
        ],
      ),
    );
  }
}
