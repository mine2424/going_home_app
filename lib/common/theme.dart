import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color.dart';

ThemeData buildLightTheme() {
  final base = ThemeData.from(
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
    ),
  );

  return base.copyWith(
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          TextStyle(
            color: base.primaryColor,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ),
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: kPrimaryColor,
    ),
    appBarTheme: base.appBarTheme.copyWith(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      titleTextStyle: const TextStyle(
        color: kWhite,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
      iconTheme: const IconThemeData(
        color: kWhite,
        size: 22,
      ),
      actionsIconTheme: const IconThemeData(
        color: kWhite,
        size: 22,
      ),
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      backgroundColor: base.primaryColor,
      foregroundColor: kWhite,
    ),
    bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
      backgroundColor: kWhite,
      unselectedItemColor: kGray,
      selectedItemColor: kPrimaryColor,
      selectedLabelStyle: base.textTheme.caption!.copyWith(
        overflow: TextOverflow.visible,
        color: kBlack,
        fontSize: 10,
      ),
      unselectedLabelStyle: base.textTheme.caption!.copyWith(
        overflow: TextOverflow.visible,
        color: kBlack,
        fontSize: 9,
      ),
      elevation: 40,
    ),
    tabBarTheme: base.tabBarTheme.copyWith(
      labelColor: kWhite,
      labelStyle: const TextStyle(
        fontSize: 12,
      ),
      unselectedLabelColor: kGray,
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
      ),
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(
          color: kWhite,
          width: 4,
        ),
        insets: EdgeInsets.symmetric(horizontal: 16),
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(kPrimaryColor),
    ),
    cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
      brightness: Brightness.light,
      primaryColor: base.primaryColor,
      textTheme: CupertinoTextThemeData(
        dateTimePickerTextStyle: textTheme(base.textTheme).bodyText2!.copyWith(
              fontSize: 15,
            ),
      ),
      barBackgroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: kbackGroundColor,
    textTheme: textTheme(
      base.textTheme.copyWith(
        headline3: base.textTheme.headline5!.copyWith(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: kBlack,
        ),
        headline4: base.textTheme.headline5!.copyWith(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: kBlack,
        ),
        headline5: base.textTheme.headline5!.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: kBlack,
        ),
        headline6: base.textTheme.headline6!.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: kBlack,
        ),
        subtitle1: base.textTheme.subtitle1!.copyWith(
          color: kBlack,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        subtitle2: base.textTheme.subtitle2!.copyWith(
          color: kBlack,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        bodyText1: base.textTheme.bodyText1!.copyWith(
          color: kBlack,
          fontSize: 16,
        ),
        bodyText2: base.textTheme.bodyText2!.copyWith(
          color: kBlack,
          fontSize: 14,
        ),
        caption: base.textTheme.caption!.copyWith(
          color: kBlack,
          fontSize: 10,
        ),
        overline: base.textTheme.caption!.copyWith(
          color: kBlack,
          fontSize: 9,
        ),
      ),
    ),
    iconTheme: IconThemeData(
      color: base.primaryColor,
    ),
  );
}

ThemeData buildDarkTheme() {
  final base = ThemeData.from(
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
    ),
  );

  return base.copyWith(
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          TextStyle(
            color: base.primaryColor,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ),
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: kPrimaryColor,
    ),
    appBarTheme: base.appBarTheme.copyWith(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: base.primaryColor,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
      iconTheme: const IconThemeData(
        color: kWhite,
        size: 22,
      ),
      actionsIconTheme: const IconThemeData(
        color: kWhite,
        size: 22,
      ),
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      backgroundColor: kPrimaryColor,
      foregroundColor: kWhite,
    ),
    bottomNavigationBarTheme: base.bottomNavigationBarTheme.copyWith(
      backgroundColor: kBlack,
      unselectedItemColor: kGray,
      selectedItemColor: kPrimaryColor,
      selectedLabelStyle: base.textTheme.caption!.copyWith(
        overflow: TextOverflow.visible,
        color: kWhite,
        fontSize: 10,
      ),
      unselectedLabelStyle: base.textTheme.caption!.copyWith(
        overflow: TextOverflow.visible,
        color: kWhite,
        fontSize: 9,
      ),
      elevation: 40,
    ),
    tabBarTheme: base.tabBarTheme.copyWith(
      labelColor: kBlack,
      labelStyle: const TextStyle(
        fontSize: 12,
      ),
      unselectedLabelColor: kGray,
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
      ),
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(
          color: kBlack,
          width: 4,
        ),
        insets: EdgeInsets.symmetric(horizontal: 16),
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(kPrimaryColor),
    ),
    cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
      brightness: Brightness.dark,
      primaryColor: base.primaryColor,
      textTheme: CupertinoTextThemeData(
        dateTimePickerTextStyle: textTheme(base.textTheme).bodyText2!.copyWith(
              fontSize: 15,
            ),
      ),
      barBackgroundColor: kBlack,
    ),
    scaffoldBackgroundColor: kbackGroundColorDark,
    textTheme: textTheme(
      base.textTheme.copyWith(
        headline3: base.textTheme.headline5!.copyWith(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: kWhite,
        ),
        headline4: base.textTheme.headline5!.copyWith(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: kWhite,
        ),
        headline5: base.textTheme.headline5!.copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: kWhite,
        ),
        headline6: base.textTheme.headline6!.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: kWhite,
        ),
        subtitle1: base.textTheme.subtitle1!.copyWith(
          color: kWhite,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        subtitle2: base.textTheme.subtitle2!.copyWith(
          color: kWhite,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        bodyText1: base.textTheme.bodyText1!.copyWith(
          color: kWhite,
          fontSize: 16,
        ),
        bodyText2: base.textTheme.bodyText2!.copyWith(
          color: kWhite,
          fontSize: 14,
        ),
        caption: base.textTheme.caption!.copyWith(
          color: kWhite,
          fontSize: 10,
        ),
        overline: base.textTheme.caption!.copyWith(
          color: kWhite,
          fontSize: 9,
        ),
      ),
    ),
    iconTheme: IconThemeData(
      color: base.primaryColorLight,
    ),
  );
}

TextStyle? _textStyle(TextStyle? base) {
  return base?.copyWith(
    fontFamily: kFontFamily,
    locale: kLocale,
    textBaseline: TextBaseline.ideographic,
  );
}

TextTheme textTheme(TextTheme base) {
  return base.copyWith(
    headline1: _textStyle(base.headline1),
    headline2: _textStyle(base.headline2),
    headline3: _textStyle(base.headline3),
    headline4: _textStyle(base.headline4),
    headline5: _textStyle(base.headline5),
    headline6: _textStyle(base.headline6),
    subtitle1: _textStyle(base.subtitle1),
    subtitle2: _textStyle(base.subtitle2),
    bodyText1: _textStyle(base.bodyText1),
    bodyText2: _textStyle(base.bodyText2),
    caption: _textStyle(base.caption),
    button: _textStyle(base.button),
    overline: _textStyle(base.overline),
  );
}
