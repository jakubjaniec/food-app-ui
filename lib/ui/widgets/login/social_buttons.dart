import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: width / 2.5,
          height: height * 0.07,
          decoration: BoxDecoration(
            color: ThemeColors().purple,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: IconButton(
            iconSize: AdaptiveTextSize().getadaptiveTextSize(context, 22.0),
            color: ThemeColors().red,
            icon: FaIcon(FontAwesomeIcons.google),
            onPressed: () {},
          ),
        ),
        Container(
          width: width / 2.5,
          height: height * 0.07,
          decoration: BoxDecoration(
            color: ThemeColors().purple,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: IconButton(
            iconSize: AdaptiveTextSize().getadaptiveTextSize(context, 22.0),
            color: Colors.blue[800],
            icon: FaIcon(FontAwesomeIcons.facebookF),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
