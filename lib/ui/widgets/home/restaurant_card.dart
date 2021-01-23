import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/theme.dart';

class RestaurantCard extends StatelessWidget {
  final String name;
  final String category;
  final double stars;
  final int eta;

  RestaurantCard({this.name, this.stars, this.category, this.eta});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    TextStyle infoStyle = TextStyle(
        color: ThemeColors().greyish,
        fontSize: AdaptiveTextSize().getadaptiveTextSize(context, 14.0));

    return Container(
      margin: EdgeInsets.only(bottom: height * 0.04),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          Container(
            height: height * 0.08,
            width: height * 0.08,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          SizedBox(width: width * 0.04),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$name',
                style: TextStyle(
                  color: ThemeColors().creamy,
                  // fontSize: 16,
                  fontSize:
                      AdaptiveTextSize().getadaptiveTextSize(context, 19.0),
                ),
              ),
              SizedBox(height: height * 0.02),
              Row(
                children: [
                  Icon(Icons.star,
                      color: Colors.yellow,
                      size: AdaptiveTextSize()
                          .getadaptiveTextSize(context, 15.0)),
                  // SizedBox(width: 4.0),
                  SizedBox(width: width * 0.01),
                  Text('$stars', style: infoStyle),
                  SizedBox(width: 8.0),
                  Icon(Icons.circle,
                      size:
                          AdaptiveTextSize().getadaptiveTextSize(context, 6.0),
                      color: ThemeColors().greyish),
                  SizedBox(width: width * 0.025),
                  Text('$category', style: infoStyle),
                  SizedBox(width: width * 0.025),
                  Icon(Icons.circle,
                      size:
                          AdaptiveTextSize().getadaptiveTextSize(context, 6.0),
                      color: ThemeColors().greyish),
                  SizedBox(width: width * 0.025),
                  Icon(Icons.timer,
                      size:
                          AdaptiveTextSize().getadaptiveTextSize(context, 15.0),
                      color: ThemeColors().greyish),
                  SizedBox(width: width * 0.015),
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
