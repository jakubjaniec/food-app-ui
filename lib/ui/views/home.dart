import 'package:flutter/material.dart';
import 'package:food_app_ui/ui/widgets/home/bottom_navigation.dart';
import 'package:food_app_ui/ui/widgets/home/categories_list.dart';
import 'package:food_app_ui/ui/widgets/home/header.dart';
import 'package:food_app_ui/ui/widgets/home/restaurants_list.dart';
import 'package:food_app_ui/utils/theme.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var colors = ThemeColors();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: colors.custom,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: height * 0.01),
          height: height,
          width: width,
          color: colors.custom,
          child: Column(
            children: [
              Header(),
              CategoriesList(),
              Expanded(child: RestaurantsList()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
