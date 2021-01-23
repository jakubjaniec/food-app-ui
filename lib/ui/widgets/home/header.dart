import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/theme.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var colors = ThemeColors();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(left: width * 0.05),
      child: Row(
        children: [
          Icon(Icons.place,
              color: Colors.deepPurple[400],
              size: AdaptiveTextSize().getadaptiveTextSize(context, 37)),
          SizedBox(width: width * 0.025),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Home',
                style: TextStyle(
                  color: colors.creamy,
                  fontWeight: FontWeight.w700,
                  // fontSize: 14.0,
                  fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 18),
                ),
              ),
              SizedBox(height: height * 0.003),
              Text('242 ST Marks Eve, Finland',
                  style: TextStyle(
                    color: colors.pinkish,
                    fontSize:
                        AdaptiveTextSize().getadaptiveTextSize(context, 14),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
