import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/theme.dart';

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle buttonTextStyle = TextStyle(
      color: Colors.white,
      letterSpacing: 1.2,
      fontWeight: FontWeight.w700,
      fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 19),
    );

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: height * 0.07,
      child: RaisedButton(
        onPressed: () {},
        color: Colors.purple[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Text('Sign In', style: buttonTextStyle),
      ),
    );
  }
}
