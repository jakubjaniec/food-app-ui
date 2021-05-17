import 'package:flutter/material.dart';
import 'package:food_app_ui/ui/views/home.dart';
import 'package:food_app_ui/utils/theme.dart';

class SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final CustomTheme theme = CustomTheme();

    final TextStyle buttonTextStyle = TextStyle(
      color: theme.creamy,
      letterSpacing: 1.2,
      fontWeight: FontWeight.w700,
      fontSize: theme.getAdaptiveTextSize(context, 19),
    );

    return SizedBox(
      width: size.width,
      height: size.height * 0.07,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.purple[900],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Text('Sign In', style: buttonTextStyle),
      ),
    );
  }
}
