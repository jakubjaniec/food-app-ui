import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/theme.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final CustomTheme theme = CustomTheme();

    return Container(
      padding: EdgeInsets.only(left: size.width * 0.05),
      child: Row(
        children: [
          Icon(Icons.place,
              color: Colors.deepPurple[400],
              size: theme.getAdaptiveTextSize(context, 37)),
          SizedBox(width: size.width * 0.025),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Home',
                style: TextStyle(
                  color: theme.creamy,
                  fontWeight: FontWeight.w700,
                  // fontSize: 14.0,
                  fontSize: theme.getAdaptiveTextSize(context, 18),
                ),
              ),
              SizedBox(height: size.height * 0.003),
              Text('242 ST Marks Eve, Finland',
                  style: TextStyle(
                    color: theme.pinkGrey,
                    fontSize: theme.getAdaptiveTextSize(context, 14),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
