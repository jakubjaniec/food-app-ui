import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final CustomTheme theme = CustomTheme();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width / 2.5,
          height: size.height * 0.07,
          decoration: BoxDecoration(
            color: theme.purple,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: IconButton(
            iconSize: theme.getAdaptiveTextSize(context, 22.0),
            color: theme.red,
            icon: const FaIcon(FontAwesomeIcons.google),
            onPressed: () {},
          ),
        ),
        Container(
          width: size.width / 2.5,
          height: size.height * 0.07,
          decoration: BoxDecoration(
            color: theme.purple,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: IconButton(
            iconSize: theme.getAdaptiveTextSize(context, 22.0),
            color: Colors.blue[800],
            icon: const FaIcon(FontAwesomeIcons.facebookF),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
