import 'package:flutter/material.dart';
import 'package:space_app/app_colors.dart';

class MyThemeData{
  ThemeData myTheme =ThemeData(
    appBarTheme: AppBarTheme(color: Colors.transparent),
textTheme: TextTheme(
  headlineLarge: TextStyle(color: AppColors.whiteColor,
      fontFamily: 'PressStart2P',
      fontSize: 24,
      fontWeight: FontWeight.w400),
  bodySmall: TextStyle(color: AppColors.whiteColor,
      fontFamily: 'PressStart2P',
      fontSize: 10,
      fontWeight: FontWeight.w400),
  bodyMedium: TextStyle(color: AppColors.babyBlueColor,
      fontFamily: 'PressStart2P',
      fontSize: 14,
      fontWeight: FontWeight.w400),
  headlineMedium:TextStyle(color: AppColors.whiteColor,
      fontFamily: 'PressStart2P',
      fontSize: 13,
      fontWeight: FontWeight.w400),
  bodyLarge: TextStyle(color: AppColors.whiteColor,
      fontFamily: 'PressStart2P',
      fontSize: 15,
      fontWeight: FontWeight.w400),
  labelLarge: TextStyle(color: AppColors.blackColor,
      fontFamily: 'PressStart2P',
      fontSize: 24,
      fontWeight: FontWeight.w400),
)
  );
}