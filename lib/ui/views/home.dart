import 'package:flutter/material.dart';
import 'package:food_app_ui/ui/widgets/home/home_widgets.dart';
import 'package:food_app_ui/utils/theme.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CustomTheme theme = CustomTheme();
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.background,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: size.height * 0.01),
          height: size.height,
          width: size.width,
          color: theme.background,
          child: Column(
            children: [
              Header(),
              CategoriesList(),
              Expanded(
                child: RestaurantsList(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
