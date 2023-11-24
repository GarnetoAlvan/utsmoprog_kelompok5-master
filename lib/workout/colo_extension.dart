
import 'package:flutter/material.dart';

class TColor {
  static Color get primaryColor1 => const Color(0xff92A3FD);
  static Color get primaryColor2 => const Color(0xff9DCEFF);


  static Color get secondaryColor1 => const Color(0xffC58BF2);
  static Color get secondaryColor2 => const Color(0xffEEA4CE);
  static Color get secondaryColor3teal => const Color(0xff00A1A6);
  static Color get secondaryColor4brownish => const Color(0xffE4C398);
  static Color get secondaryColor5grey => const Color(0xff9f9f9f);
  static Color get secondaryColor6dark => const Color(0xff707070);
  static Color get secondaryColor7yellow => const Color(0xffFFC77D);
  static Color get secondaryColor8orange => const Color(0xffe39461);
  static Color get secondaryColor9bright => const Color(0xffFFC9A3);
  static Color get secondaryColor10bright => const Color(0xffFA8128);
  static Color get secondaryColor11lightgrey => const Color(0xffa9a9a9);


  static List<Color> get primaryG => [ primaryColor2, primaryColor1 ];
  static List<Color> get secondaryG => [secondaryColor2, secondaryColor1];
  static List<Color> get tealmixbrown => [secondaryColor3teal, secondaryColor4brownish];
  static List<Color> get brownmixbrown => [secondaryColor4brownish,secondaryColor7yellow];
  static List<Color> get darkmixdark => [secondaryColor6dark,secondaryColor6dark];
  static List<Color> get orangemix => [secondaryColor8orange,secondaryColor8orange];
  static List<Color> get orangemixs => [secondaryColor8orange,secondaryColor9bright];
  static List<Color> get greygrey => [secondaryColor6dark,secondaryColor6dark];
  static List<Color> get tealteal => [secondaryColor3teal,secondaryColor3teal];

  static Color get black => const Color(0xff1D1617);
  static Color get gray => const Color(0xff786F72);
  static Color get white => Colors.white;
  static Color get lightGray => const Color(0xffF7F8F8);



}