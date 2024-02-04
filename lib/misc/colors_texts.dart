import 'package:flutter/material.dart';

class AppColors {
  static Color mainBgColor = Color(0xffEDEDF1);
  static Color otherBg = Color(0xffFDFDFF);
  static Color textColor = Color(0xFF273B4A);
  static Color appColorBlue = Color(0xff0392CE);
  static Color appColorYellow = Color(0xffEFB40D);
  static Color appColorRed = Color(0xffFA3654);
  static Color appColorA = Color(0xff39244F);
  static Color appColorRed1 = Color(0xffED213A);
  static Color botIcons = Color(0xFF39244F);
}

class Styles {
  static TextStyle txtStyle = TextStyle(
      color: AppColors.textColor,
      fontSize: 16,
      fontFamily: 'General-Sans',
      fontWeight: FontWeight.w500);

  static TextStyle headLineStyle1 = TextStyle(
    color: AppColors.textColor,
    fontSize: 26,
    fontFamily: 'Inter,',
  );

  static TextStyle headLineStyle2 = TextStyle(
    color: AppColors.textColor,
    fontSize: 21,
    fontFamily: 'Inter',
    fontWeight: FontWeight.bold,
  );

  static TextStyle headLineStyle3 = TextStyle(
    color: AppColors.textColor,
    fontSize: 17,
    fontFamily: 'Inter',
  );

  static TextStyle headLineStyle4 = TextStyle(
      color: AppColors.textColor,
      fontSize: 14,
      fontFamily: 'Inter',
      fontWeight: FontWeight.bold);
}
