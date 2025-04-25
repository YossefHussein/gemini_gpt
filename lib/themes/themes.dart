import 'package:flutter/material.dart';

/*
* Theme Configuration for Flutter Application
* 
* This file contains:
* 1. Font Size Constants - Predefined font sizes for consistent typography:
*    - Ranges from extraSmall (14.0) to doubleExtraLarge (26.0)
* 
* 2. Light Theme - Bright theme with blue primary color and white surfaces:
*    - AppBar: White shadow
*    - Color Scheme: White background (#FFFFFF), blue primary (#3369FF), light gray secondary (#EEEEEE)
*    - Input Fields: Blue label text
*    - Text Theme: Black titles, gray/black body text with small/standard sizes
* 
* 3. Dark Theme - Dark theme with maintained blue primary and contrasting elements:
*    - AppBar: Dark gray shadow (#625B5B)
*    - Color Scheme: Black background (#000000), same blue primary, light gray secondary
*    - Text Theme: Light gray titles (#EEEEEE), maintains body text sizes
* 
* Usage Notes:
* - Access font sizes via FontSizes.[sizeName]
* - Apply themes using ThemeData.light()/dark() or theme switcher
* - Text styles automatically adapt to theme context
* - Color scheme provides consistent theming across widgets
*/

class FontSizes {
  static const extraSmall = 14.0;
  static const small = 16.0;
  static const standard = 18.0;
  static const large = 20.0;
  static const extraLarge = 24.0;
  static const doubleExtraLarge = 26.0;
}

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    shadowColor: Colors.white,
  ),
  colorScheme: const ColorScheme.light(
      surface: Color(0xffffffff),
      primary: Color(0xff3369FF),
      secondary: Color(0xffEEEEEE)
  ),
  inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.blue)
  ),
  textTheme: const TextTheme(
      titleLarge: TextStyle(color: Color(0xff000000),),
      titleSmall: TextStyle(
        color: Color(0xff000000),
      ),
      bodyMedium: TextStyle(
          color: Color(0xffEEEEEE),
          fontSize: FontSizes.small
      ),
      bodySmall: TextStyle(
          color: Color(0xff000000),
          fontSize: FontSizes.small
      )
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    shadowColor: Color(0xff625b5b),
  ),
  colorScheme: const ColorScheme.dark(
      background: Color(0xff000000),
      primary: Color(0xff3369FF),
      secondary: Color(0xffEEEEEE)
  ),
  textTheme: const TextTheme(
      titleLarge: TextStyle(color: Color(0xffEEEEEE),),
      titleSmall: TextStyle(
        color: Color(0xff000000),
      ),
      bodyMedium: TextStyle(
          color: Color(0xffEEEEEE),
          fontSize: FontSizes.small
      ),
      bodySmall: TextStyle(
          color: Color(0xff000000),
          fontSize: FontSizes.small
      )
  ),
);