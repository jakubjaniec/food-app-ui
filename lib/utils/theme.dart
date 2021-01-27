import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomTheme {
  final background = HexColor('#12072B');
  final purple = HexColor('#40364A');
  final creamy = HexColor('#EAE9EA');
  final red = HexColor('#C22F24');
  final blueGrey = HexColor('#8A8898');
  final pinkGrey = HexColor('#AA9FAA');

  double getAdaptiveTextSize(BuildContext context, double value) {
    return (value / 720) * MediaQuery.of(context).size.height;
  }
}
