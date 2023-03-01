import 'package:flutter/material.dart';

Color green1 = const Color(0xFF097210);
Color green2 = const Color(0xFF00880F);
Color green3 = const Color(0xFF00AA12);
Color dark1 = const Color(0xFF1C1C1C);
Color dark2 = const Color(0xFF4A4A4A);
Color dark3 = const Color(0xFF999798);
Color dark4 = const Color(0xFFEDEDED);
Color blue1 = const Color(0xFF0281A0);
Color blue2 = const Color(0xFF00AED5);
Color blue3 = const Color(0xFF38BBDA);
Color red1 = const Color(0xFFED2739);
Color purple1 = const Color(0xFF87027B);

TextStyle regular12_5 =
    const TextStyle(fontFamily: 'SF-Pro-Display', fontSize: 12.5);
TextStyle regular14 = regular12_5.copyWith(fontSize: 14, letterSpacing: 0.4);

TextStyle semibold12_5 =
    regular12_5.copyWith(fontWeight: FontWeight.w600, letterSpacing: 0.4);
TextStyle semibold14 = regular12_5.copyWith(
    fontSize: 14, letterSpacing: 0.1, fontWeight: FontWeight.w600);

TextStyle bold16 = const TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontSize: 16,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w700);
TextStyle bold18 = bold16.copyWith(fontSize: 14, letterSpacing: -0.5);
