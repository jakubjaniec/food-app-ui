import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ThemeColors {
  // #040408 - black
  // #40364A - purple
  // #271FE2 - dark blue
  // #EAE9EA - creamy
  // #C22F24 - red
  // #8A8898 - greyish
  // #AA9FAA - pinkish
  // #373BA9 - dark blue

  final black = HexColor('#040408');
  final purple = HexColor('#40364A');
  final darkBlue = HexColor('#271FE2');
  final creamy = HexColor('#EAE9EA');
  final red = HexColor('#C22F24');
  final greyish = HexColor('#8A8898');
  final pinkish = HexColor('#AA9FAA');
  final blue = HexColor('#373BA9');

  final custom = HexColor('#12072b');
}

class AdaptiveTextSize {
  const AdaptiveTextSize();

  getadaptiveTextSize(BuildContext context, dynamic value) {
    // 720 is medium screen height
    return (value / 720) * MediaQuery.of(context).size.height;
  }
}
