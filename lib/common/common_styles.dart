import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color.dart';

class CommonStyles {
  CommonStyles._();

  static textField16w500primary() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.3,
            fontSize: 16,
            color: ColorsConsts.primary,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static textField16w500primarypink() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.3,
            fontSize: 16,
            color: ColorsConsts.primary,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat'));
  }

  static textField13w500primarypink() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.3,
            fontSize: 13,
            color: ColorsConsts.primary,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static textField16w500black() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            fontSize: 16,
            color: ColorsConsts.black,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto'));
  }

  static textField16w700red() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.3,
            fontSize: 17,
            color: ColorsConsts.red,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static textField16w700blue() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.3,
            fontSize: 17,
            color: ColorsConsts.blue,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat'));
  }

  static textField16w500red() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.3,
            fontSize: 20,
            color: Colors.red,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static textField16w500green() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.3,
            fontSize: 16,
            color: ColorsConsts.green,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static textField16w700primary() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.3,
            fontSize: 18,
            color: Color.fromARGB(255, 121, 10, 2),
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat'));
  }

  static appBarField16w600primary() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            fontSize: 22,
            color: ColorsConsts.primary,
            backgroundColor: ColorsConsts.white,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static submitTextStyle15w600white() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.1,
            color: Colors.white,
            backgroundColor: Color.fromARGB(0, 197, 196, 196),
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat'));
  }

  static loginTextStyle() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            // letterSpacing: 0.5,
            color: ColorsConsts.white,
            backgroundColor: ColorsConsts.primary,
            fontSize: 22,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat'));
  }

  static subheaderText20w600() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: Colors.white,
            backgroundColor: ColorsConsts.black,
            letterSpacing: 0.2,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat'));
  }

  static genderTextStyle() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: ColorsConsts.primary,
            backgroundColor: Colors.transparent,
            fontSize: 13,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static sendOTPButtonTextStyle() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
      color: ColorsConsts.primary,

      // backgroundColor: Colors.transparent,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ));
  }

  static text15w900robotowhite() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
      color: Color.fromARGB(255, 255, 255, 255),

      // backgroundColor: Colors.transparent,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ));
  }

  static errorTextStyleStyle() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
      color: ColorsConsts.primary1,
      backgroundColor: Colors.transparent,
      fontSize: 14,
      letterSpacing: 0.1,
      fontWeight: FontWeight.w500,
    ));
  }

  static normalTextBrown() {
    return GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: ColorsConsts.primary,
            fontSize: 13,
            fontWeight: FontWeight.w900,
            fontFamily: 'Montserrat'));
  }

  static normalTextBlack() {
    return GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: ColorsConsts.black,
            backgroundColor: Colors.transparent,
            fontSize: 18,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static normalTextBlack28() {
    return GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: Colors.red,
            backgroundColor: Colors.transparent,
            fontSize: 22,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat'));
  }

  static normalTextBlue() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: Color.fromARGB(255, 3, 125, 182),
            backgroundColor: Colors.transparent,
            fontSize: 16,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat'));
  }

  static normalTextBlue14() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: Color.fromARGB(255, 5, 108, 156),
            backgroundColor: Colors.transparent,
            fontSize: 12,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat'));
  }

  static textHeader16w900() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: ColorsConsts.primary,
            fontSize: 18,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w800,
            fontFamily: 'Montserrat'));
  }

  static labelText16w500Black() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: Color.fromARGB(255, 90, 89, 89),
            backgroundColor: Colors.transparent,
            fontSize: 12,
            letterSpacing: 0.3,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat'));
  }

  static labelText15w500Blue() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: ColorsConsts.primary,
            backgroundColor: Colors.transparent,
            fontSize: 20,
           // letterSpacing: 0.3,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat'));
  }

  static labelText15w500White() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            letterSpacing: 0.2,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat'));
  }

  static labelText18w500White() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            letterSpacing: 0.2,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static labelText15w500Grey() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: ColorsConsts.black,
            backgroundColor: Colors.transparent,
            fontSize: 14,
            letterSpacing: 0.2,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat'));
  }
}
