import 'package:ecommerce_app/utility/colors.dart';
import 'package:flutter/material.dart';
class AppThemes{

  // light text theme
  static const TextTheme lightTextTheme=TextTheme(
      bodyLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColors.lightTextColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.lightTextColor,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColors.lightTextColor,
      ),
      headlineLarge: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 21,
          color: AppColors.lightTextColor
      ),
      headlineSmall: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: AppColors.lightTextColor
  ),
      headlineMedium: TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 18,
  color: AppColors.lightTextColor
  )
  );

  // dark text theme
  static const TextTheme darkTextTheme=TextTheme(
      bodyLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColors.darkTextColor),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.darkTextColor,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColors.darkTextColor,
      ),
      headlineLarge: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: AppColors.darkTextColor
      )
  );

  //light app theme
  static final ThemeData lightTheme=ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.brandColor,
    scaffoldBackgroundColor: AppColors.lightBackground,

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightAppBarBackground,
        foregroundColor: AppColors.lightTextColor,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.brandColor,
        foregroundColor: AppColors.buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12)
        )
      )
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.lightTextColor,
            padding: EdgeInsets.all(0)
      ),

    ),

    drawerTheme: DrawerThemeData(
      backgroundColor: AppColors.lightDrawerBackground
    ),
    cardTheme:CardThemeData(
        color:AppColors.lightCardColor
    ),
textTheme: lightTextTheme
  );

  // dark mode app theme
  static final ThemeData darkTheme=ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.brandColor,
    scaffoldBackgroundColor: AppColors.darkBackground,

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkAppBarBackground,
    ),
    filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
            backgroundColor: AppColors.brandColor,
            foregroundColor: AppColors.buttonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
            )
        )
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            foregroundColor: AppColors.darkTextColor,
            padding: EdgeInsets.all(0)
        )
    ),

    drawerTheme: DrawerThemeData(
        backgroundColor: AppColors.darkDrawerBackground
    ),
    cardTheme:CardThemeData(
        color:AppColors.darkCardColor
    ),
textTheme: darkTextTheme
  );

}