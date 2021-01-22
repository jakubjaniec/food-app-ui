import 'package:flutter/material.dart';
import 'package:food_app_ui/ui/widgets/home/restaurant_card.dart';
import 'package:food_app_ui/utils/theme.dart';

class RestaurantsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.07),
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular Restaurants',
                    style: TextStyle(
                      color: ThemeColors().greyish,
                      fontWeight: FontWeight.w700,
                      fontSize:
                          AdaptiveTextSize().getadaptiveTextSize(context, 20.0),
                    )),
                Icon(
                  Icons.filter_list,
                  color: ThemeColors().greyish,
                  size: AdaptiveTextSize().getadaptiveTextSize(context, 27.0),
                ),
              ],
            ),
          ),
          Container(
            child: Expanded(
              child: ListView(
                children: [
                  RestaurantCard(
                      name: 'Domino\'s Pizza',
                      category: 'Pizza',
                      stars: 4.6,
                      eta: 15),
                  RestaurantCard(
                      name: 'Burger King',
                      category: 'Fastfood',
                      stars: 4.4,
                      eta: 30),
                  RestaurantCard(
                      name: 'KFC', category: 'Fastfood', stars: 4.4, eta: 25),
                  RestaurantCard(
                      name: 'Pizza Hut',
                      category: 'Pizza',
                      stars: 4.4,
                      eta: 20),
                  RestaurantCard(
                      name: 'Sushi bar',
                      category: 'Seafood',
                      stars: 4.4,
                      eta: 40),
                  RestaurantCard(
                      name: 'Mc Donald\'s',
                      category: 'Fastfood',
                      stars: 4.4,
                      eta: 25),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
