import 'package:flutter/material.dart';
import 'package:food_app_ui/ui/widgets/home/category.dart';
// import 'package:food_app_ui/utils/theme.dart';

class CategoriesList extends StatelessWidget {
  final categories = [
    'Burgers',
    'Pizza',
    'Beverages',
    'Asian',
    'Chinese',
    'Seafood'
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(vertical: height * 0.05),
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: width * 0.07),
        children: [
          Category(text: 'Burgers', isActive: true),
          Category(text: 'Pizza', isActive: false),
          Category(text: 'Drinks', isActive: false),
          Category(text: 'Asian', isActive: false),
          Category(text: 'Seafood', isActive: false),
          Category(text: 'Chinese', isActive: false),
        ],
      ),
    );
  }
}