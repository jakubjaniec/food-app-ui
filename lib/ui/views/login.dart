import 'package:flutter/material.dart';
import 'package:food_app_ui/ui/widgets/login/form.dart';
import 'package:food_app_ui/ui/widgets/login/header_login.dart';
import 'package:food_app_ui/ui/widgets/login/register_text.dart';
import 'package:food_app_ui/ui/widgets/login/sign_in_button.dart';
import 'package:food_app_ui/ui/widgets/login/social_buttons.dart';
import 'package:food_app_ui/utils/theme.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ThemeColors().custom,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.06),
        height: height,
        width: width,
        color: ThemeColors().custom,
        child: Column(
          children: [
            SizedBox(height: height * 0.09),
            Header(),
            SizedBox(height: height * 0.05),
            SocialButtons(),
            SizedBox(height: height * 0.05),
            Text('or Login with Email',
                style: TextStyle(
                    color: ThemeColors().greyish,
                    fontSize:
                        AdaptiveTextSize().getadaptiveTextSize(context, 16))),
            SizedBox(height: height * 0.05),
            LoginForm(),
            SizedBox(height: height * 0.07),
            SignInButton(),
            SizedBox(height: height * 0.05),
            RegisterText(),
          ],
        ),
      ),
    );
  }
}
