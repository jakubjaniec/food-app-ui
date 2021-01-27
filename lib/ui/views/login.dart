import 'package:flutter/material.dart';
import 'package:food_app_ui/ui/widgets/login/login_widgets.dart';
import 'package:food_app_ui/utils/theme.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final CustomTheme theme = CustomTheme();

    return Scaffold(
      backgroundColor: theme.background,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
        height: size.height,
        width: size.width,
        color: theme.background,
        child: Column(
          children: [
            SizedBox(height: size.height * 0.09),
            Header(),
            SizedBox(height: size.height * 0.05),
            SocialButtons(),
            SizedBox(height: size.height * 0.05),
            Text(
              'or Login with Email',
              style: TextStyle(
                color: theme.blueGrey,
                fontSize: theme.getAdaptiveTextSize(context, 16),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            LoginForm(),
            SizedBox(height: size.height * 0.07),
            SignInButton(),
            SizedBox(height: size.height * 0.05),
            RegisterText(),
          ],
        ),
      ),
    );
  }
}
