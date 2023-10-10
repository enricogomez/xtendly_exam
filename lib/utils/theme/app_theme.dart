import 'package:flutter/material.dart';
import 'package:xtendly_exam/generated/colors.gen.dart';
import 'package:xtendly_exam/utils/theme/text_styles.dart';

class BaseThemeData {
  BaseThemeData._();
  factory BaseThemeData.getInstance() => BaseThemeData._();

  ThemeData getTheme() {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Inter',
      primaryColor: ColorName.black,
      canvasColor: ColorName.white,
      scaffoldBackgroundColor: ColorName.white,
      appBarTheme: _appBarTheme,
      textButtonTheme: _defaultTextButtonTheme,
      filledButtonTheme: _defaultFilledButtonTheme,
    );
  }

  AppBarTheme get _appBarTheme {
    return const AppBarTheme(
      elevation: 5,
      centerTitle: true,
      backgroundColor: ColorName.white,
      shadowColor: ColorName.black,
      surfaceTintColor: ColorName.white,
    );
  }

  TextButtonThemeData? get _defaultTextButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
      ).copyWith(
        textStyle: MaterialStatePropertyAll(
          TextStyles.interMedium.copyWith(
            fontSize: 16,
          ),
        ),
        foregroundColor: const MaterialStatePropertyAll(
          ColorName.black,
        ),
        overlayColor: const MaterialStatePropertyAll(
          Colors.transparent,
        ),
      ),
    );
  }

  FilledButtonThemeData? get _defaultFilledButtonTheme {
    return FilledButtonThemeData(
      style: FilledButton.styleFrom(
        animationDuration: const Duration(seconds: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
      ).copyWith(
        textStyle: MaterialStatePropertyAll(
          TextStyles.interMedium.copyWith(
            fontSize: 24,
          ),
        ),
        foregroundColor: const MaterialStatePropertyAll(
          ColorName.black,
        ),
        overlayColor: const MaterialStatePropertyAll(
          Colors.transparent,
        ),
        backgroundColor: const MaterialStatePropertyAll(
          ColorName.white,
        ),
      ),
    );
  }
}
