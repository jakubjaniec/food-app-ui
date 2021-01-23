import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/theme.dart';

class RegisterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle registerStyle = TextStyle(
      color: Colors.deepPurple[600],
      fontWeight: FontWeight.w700,
      fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 15.5),
    );

    TextStyle style = TextStyle(
      color: ThemeColors().pinkish,
      fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 15.5),
    );

    return RichText(
      text: TextSpan(
        style: style,
        text: 'Dont\'t have an account?',
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
