import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color appBackgroundColor = Color(0xFFE5E5E5);
  static const Color darkBackgroundColor = Color(0xFF121225);
  static const Color topBarBackgroundColor = Color(0xFFFFD974);
  static const Color selectedTabBackgroundColor = Color(0xFFFFC442);
  static const Color unSelectedTabBackgroundColor = Color(0xFFFFFFFC);
  static const Color subTitleTextColor = Colors.white;
  static const Color textColor = Color(0xff131313);
  static const Color textGreyColor = Color(0xffA4A4A4);

  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: AppTheme.appBackgroundColor,
      brightness: Brightness.light,
      primaryColorLight: Colors.white,
      primaryColorDark: Color(0xff333333),
      textTheme: lightTextTheme,
      primaryColor: Color(0xff333333),
      accentColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
      cardTheme: CardTheme(
        color: Colors.white,
        shape: new RoundedRectangleBorder(
            side: new BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(5.0)),
      ));

  static final ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      textTheme:
          darkTextTheme.copyWith(bodyText2: TextStyle(color: Colors.white)),
      primaryColor: Color(0xff29293A),
      accentColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.white),
      cardTheme: CardTheme(
        color: Color(0xff29293A),
        shape: new RoundedRectangleBorder(
            side: new BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(5.0)),
      ));

  static final TextTheme lightTextTheme = TextTheme(
    headline6: _titleLight,
    subtitle2: _subTitleLight,
    button: _buttonLight,
    headline3: _greetingLight,
    headline2: _searchLight,
    bodyText2: _selectedTabLight,
    bodyText1: _unSelectedTabLight,
  );

  static final TextTheme darkTextTheme = TextTheme(
    headline6: _titleDark,
    subtitle2: _subTitleDark,
    button: _buttonDark,
    headline3: _greetingDark,
    headline2: _searchDark,
    bodyText2: _selectedTabDark,
    bodyText1: _unSelectedTabDark,
  );

  static final TextStyle _titleLight = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 28,
  );

  static final TextStyle _subTitleLight = TextStyle(
    color: subTitleTextColor,
    fontSize: 18,
    height: 1.5,
  );

  static final TextStyle _buttonLight = TextStyle(
    color: Colors.black,
    // fontSize: 22,
  );

  static final TextStyle _greetingLight = TextStyle(
    color: Colors.black,
    fontSize: 16,
  );

  static final TextStyle _searchLight = TextStyle(
    color: Colors.black,
    fontSize: 22,
  );

  static final TextStyle _selectedTabLight = TextStyle(
    color: textColor,
    fontSize: 16,
  );

  static final TextStyle _unSelectedTabLight = TextStyle(
    color: Colors.grey,
    fontSize: 16,
  );

  static final TextStyle _titleDark = _titleLight.copyWith(color: Colors.white);

  static final TextStyle _subTitleDark =
      _subTitleLight.copyWith(color: Colors.white70);

  static final TextStyle _buttonDark =
      _buttonLight.copyWith(color: Colors.black);

  static final TextStyle _greetingDark =
      _greetingLight.copyWith(color: Colors.black);

  static final TextStyle _searchDark =
      _searchLight.copyWith(color: Colors.black);

  static final TextStyle _selectedTabDark =
      _selectedTabLight.copyWith(color: Colors.black);

  static final TextStyle _unSelectedTabDark =
      _selectedTabLight.copyWith(color: Colors.white70);
}
