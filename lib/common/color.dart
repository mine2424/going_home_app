// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 共通
const kPrimaryColor = Color.fromARGB(255, 243, 158, 88);
const kLightPrimaryColor = Color.fromARGB(255, 242, 186, 140);
const kSecondaryColor = Color(0xFFEEF082);

const kBlack = Color(0xFF43443F);

const kbackGroundColor = Color.fromARGB(243, 243, 243, 243);
const kDarkGray = Color.fromARGB(255, 93, 93, 93);
const kLightGray = Color.fromARGB(255, 166, 164, 164);
const kGray = Color(0xFF9B9B9B);

const kWhite = Color.fromARGB(255, 254, 254, 254);

const kRed = Color.fromARGB(255, 255, 97, 86);

const kLocale = Locale('ja', 'JP');

final bool _android = defaultTargetPlatform == TargetPlatform.android;
const String kFontFamilyAndroid = 'Roboto';
const String kFontFamilyCupertino = 'Roboto';

final String kFontFamily = _android ? kFontFamilyAndroid : kFontFamilyCupertino;

//dark
const kbackGroundColorDark = Color(0x00121212);
const kbackGroundColorBlack = Color.fromARGB(0, 51, 50, 50);
