import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/theme.dart';

class Category extends StatelessWidget {
  final String text;
  final bool isActive;

  const Category({this.text, this.isActive});

  @override
  Widget build(BuildContext context) {
    final CustomTheme theme = CustomTheme();
    final Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(right: size.width * 0.06),
      child: Column(
        children: [
          Container(
            height: size.height * 0.07,
            width: size.height * 0.07,
            decoration: BoxDecoration(
              color: isActive ? Colors.deepPurple[400] : theme.purple,
              borderRadius: BorderRadius.circular(size.height * 0.02),
            ),
          ),
          SizedBox(height: size.height * 0.008),
          Text(text,
              style: TextStyle(
                color: theme.creamy,
                fontSize: theme.getAdaptiveTextSize(context, 14),
              )),
        ],
      ),
    );
  }
}
