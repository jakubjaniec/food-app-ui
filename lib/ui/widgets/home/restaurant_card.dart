import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/theme.dart';

class RestaurantCard extends StatelessWidget {
  final String name;
  final String category;
  final double stars;
  final int eta;

  const RestaurantCard({this.name, this.stars, this.category, this.eta});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final CustomTheme theme = CustomTheme();

    final TextStyle infoStyle = TextStyle(
        color: theme.blueGrey,
        fontSize: theme.getAdaptiveTextSize(context, 14.0));

    return Container(
      margin: EdgeInsets.only(bottom: size.height * 0.04),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          Container(
            height: size.height * 0.08,
            width: size.height * 0.08,
            decoration: BoxDecoration(
              color: theme.creamy,
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          SizedBox(width: size.width * 0.04),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: theme.creamy,
                  // fontSize: 16,
                  fontSize: theme.getAdaptiveTextSize(context, 19.0),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                children: [
                  Icon(Icons.star,
                      color: Colors.yellow,
                      size: theme.getAdaptiveTextSize(context, 15.0)),
                  // SizedBox(width: 4.0),
                  SizedBox(width: size.width * 0.01),
                  Text('$stars', style: infoStyle),
                  SizedBox(width: size.width * 0.02),
                  Icon(Icons.circle,
                      size: theme.getAdaptiveTextSize(context, 6.0),
                      color: theme.blueGrey),
                  SizedBox(width: size.width * 0.025),
                  Text(category, style: infoStyle),
                  SizedBox(width: size.width * 0.025),
                  Icon(Icons.circle,
                      size: theme.getAdaptiveTextSize(context, 6.0),
                      color: theme.blueGrey),
                  SizedBox(width: size.width * 0.025),
                  Icon(Icons.timer,
                      size: theme.getAdaptiveTextSize(context, 15.0),
                      color: theme.blueGrey),
                  SizedBox(width: size.width * 0.015),
                  Text('$eta min', style: infoStyle),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
