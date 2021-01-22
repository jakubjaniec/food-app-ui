import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/theme.dart';

class Category extends StatelessWidget {
  final String text;
  final bool isActive;

  Category({this.text, this.isActive});

  @override
  Widget build(BuildContext context) {
    var colors = ThemeColors();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(
        right: width * 0.06,
      ),
      child: Column(
        children: [
          Container(
            height: height * 0.07,
            width: height * 0.07,
            decoration: BoxDecoration(
              color: isActive ? Colors.deepPurple[400] : colors.purple,
              borderRadius: BorderRadius.circular(height * 0.02),
            ),
          ),
          SizedBox(height: height * 0.008),
          Text(text,
              style: TextStyle(
                color: Colors.white,
                fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 14),
              )),
        ],
      ),
    );
  }
}
