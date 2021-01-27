import 'package:flutter/material.dart';
import 'package:food_app_ui/ui/widgets/home/category.dart';

class CategoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.05),
      height: size.height * 0.11,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: size.width * 0.06),
        children: const [
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
