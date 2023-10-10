import 'package:flutter/material.dart';
import 'package:xtendly_exam/generated/colors.gen.dart';

class TextStyles {
  static const TextStyle _interBaseTextStyle = TextStyle(
    fontFamily: 'Inter',
    decoration: TextDecoration.none,
    color: ColorName.black,
  );

  static final TextStyle interRegular = _interBaseTextStyle.copyWith(
    fontWeight: FontWeight.w400,
  );

  static final TextStyle interMedium = _interBaseTextStyle.copyWith(
    fontWeight: FontWeight.w500,
  );

  static final TextStyle interBold = _interBaseTextStyle.copyWith(
    fontWeight: FontWeight.w600,
  );
}
