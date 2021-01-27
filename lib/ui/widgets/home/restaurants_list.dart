import 'package:flutter/material.dart';
import 'package:food_app_ui/ui/widgets/home/restaurant_card.dart';
import 'package:food_app_ui/utils/theme.dart';

class RestaurantsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final CustomTheme theme = CustomTheme();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular Restaurants',
                    style: TextStyle(
                      color: theme.blueGrey,
                      fontWeight: FontWeight.w700,
                      fontSize: theme.getAdaptiveTextSize(context, 20.0),
                    )),
                Icon(
                  Icons.filter_list,
                  color: theme.blueGrey,
                  size: theme.getAdaptiveTextSize(context, 27.0),
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.04),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Expanded(
              child: ListView(
                children: const [
                  RestaurantCard(
                      name: "Domino's Pizza",
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
                      name: "Mc Donald's",
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
