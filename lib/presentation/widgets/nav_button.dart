import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xtendly_exam/utils/theme/text_styles.dart';

class NavButton extends StatelessWidget {
  const NavButton({super.key, required this.title, required this.fontSize});

  final String title;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: TextButton(
          onPressed: () {},
          child: Text(
            title,
            style: TextStyles.interMedium.copyWith(fontSize: fontSize),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
