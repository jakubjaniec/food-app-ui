import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/theme.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    TextStyle labelStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      letterSpacing: 1.15,
      fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 16),
    );

    TextStyle inputTextStyle = TextStyle(
      color: Colors.white,
      fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 17),
    );

    InputDecoration inputDecoration = InputDecoration(
      fillColor: ThemeColors().purple,
      filled: true,
      contentPadding: EdgeInsets.symmetric(
          horizontal: width * 0.05, vertical: height * 0.02),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email', style: labelStyle),
        SizedBox(height: height * 0.02),
        TextField(
          style: inputTextStyle,
          decoration: inputDecoration,
        ),
        SizedBox(height: height * 0.04),
        Text('Password', style: labelStyle),
        SizedBox(height: height * 0.02),
        TextField(
          obscureText: true,
          style: inputTextStyle,
          decoration: inputDecoration,
        ),
      ],
    );
  }
}
