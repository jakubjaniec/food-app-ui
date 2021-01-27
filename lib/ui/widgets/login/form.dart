import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/theme.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final CustomTheme theme = CustomTheme();

    final TextStyle labelStyle = TextStyle(
      color: theme.creamy,
      fontWeight: FontWeight.w700,
      letterSpacing: 1.15,
      fontSize: theme.getAdaptiveTextSize(context, 16),
    );

    final TextStyle inputTextStyle = TextStyle(
      color: theme.creamy,
      fontSize: theme.getAdaptiveTextSize(context, 17),
    );

    final InputDecoration inputDecoration = InputDecoration(
      fillColor: theme.purple,
      filled: true,
      contentPadding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.02),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email', style: labelStyle),
        SizedBox(height: size.height * 0.02),
        TextField(
          style: inputTextStyle,
          decoration: inputDecoration,
        ),
        SizedBox(height: size.height * 0.04),
        Text('Password', style: labelStyle),
        SizedBox(height: size.height * 0.02),
        TextField(
          obscureText: true,
          style: inputTextStyle,
          decoration: inputDecoration,
        ),
      ],
    );
  }
}
