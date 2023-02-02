import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

class ColorManager {
  static const Color mainColor = Color(0xffD9583B);
  static const Color textColor = Color(0xffFFB1A0);
  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xff000000);
  static const Color background = Color(0xffECECEC);
  static const Color secondColor = Color(0xff757575);
  static const Color hintColor = Color(0xffC0C0C0);
  static const Color textFontColor = Color(0xff707070);
  static const Color textFont1Color = Color(0xff655757);
  static const Color shadowColor = Color(0xff585858);
  static const Color unselectedIconColor = Color(0xff898989);
  static const Color iconColor = Color(0xff848484);
  static const Color dividerGrey = Color(0xffB5B5B5);
  static const Color dividerGrey1 = Color(0xffBCBCBC);
  static const Color hintStyleColor = Color(0xffFFB1A0);
  static const Color outerCircle = Color(0xffCBCBCB);
  static const Color outerCircleShadow = Color(0xffD9583B);
  static const Color middleCircleShadow = Color(0xff2C4658);
  LinearGradient gradient1 = LinearGradient(
      colors: [HexColor('#CA2229'), HexColor('#FFCF64')],
      tileMode: TileMode.decal,
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);

  static LinearGradient middleCircleGradient = LinearGradient(
    colors: [
      HexColor('#DBE2E8'),
      HexColor('#EEF1F4'),
      HexColor('#FAFBFC'),
      HexColor('#FFFFFF'),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

var mainColor = HexColor('#D9583B');
var textColor = HexColor('#FFB1A0');
var white = HexColor('#FFFFFF');
var black = HexColor('#000000');
var background = HexColor('#ECECEC');
var secondColor = HexColor('#757575');
var hintColor = HexColor('#C0C0C0');
var textFontColor = HexColor('#707070');
var textFont1Color = HexColor('#655757');
var shadowColor = HexColor('#585858');
var unselectedIconColor = HexColor('#898989');
var iconColor = HexColor('#848484');
var hintStyleColor = HexColor('#FFB1A0');

var gradient1 = LinearGradient(
    colors: [HexColor('#CA2229'), HexColor('#FFCF64')],
    tileMode: TileMode.decal,
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter);
