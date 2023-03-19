import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kBrown = Color(0XFF292526);
const Color kDarkBrown = Color(0XFF1B2028);
const Color kGrey = Color(0XFFA4AAAD);
const Color kDarkGrey = Color(0XFF878787);
const Color kLightGrey = Color(0XFFEDEDED);
const Color kWhite = Color(0XFFFFFFFF);
const Color kBlack = Color(0XFF111111);
const Color kYellow = Color(0XFFFFD33C);
const Color kBlue = Color(0XFF347EFB);
const Color kBorderColor = Color(0XFFEAEAEA);
const double kBorderRadius = 12.0;
const double kPaddingHorizontal = 24.0;

final kInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(kBorderRadius),
    borderSide: const BorderSide(color: kLightGrey));

final kEncodeSansBold = GoogleFonts.encodeSans(fontWeight: FontWeight.w700);
final kEncodeSansSemiBold = GoogleFonts.encodeSans(fontWeight: FontWeight.w600);
final kEncodeSansMedium = GoogleFonts.encodeSans(fontWeight: FontWeight.w500);
final kEncodeSansRegular = GoogleFonts.encodeSans(fontWeight: FontWeight.w400);
