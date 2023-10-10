import 'package:flutter/material.dart';
import 'package:xtendly_exam/generated/assets.gen.dart';
import 'package:xtendly_exam/generated/colors.gen.dart';
import 'package:xtendly_exam/utils/theme/text_styles.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 30,
      child: TextField(
        style: const TextStyle(color: ColorName.white),
        cursorColor: ColorName.white,
        decoration: InputDecoration(
          prefixIcon: Assets.images.searchIcon.image(),
          hintText: 'Search',
          hintStyle: TextStyles.interRegular.copyWith(
            fontSize: 12,
            color: ColorName.black.withOpacity(0.29),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: ColorName.grey,
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
