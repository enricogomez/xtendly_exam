import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xtendly_exam/generated/colors.gen.dart';
import 'package:xtendly_exam/utils/theme/text_styles.dart';

class SaleBanner extends StatelessWidget {
  const SaleBanner({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth <= 600;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorName.white,
        boxShadow: [
          BoxShadow(
            color: ColorName.black.withOpacity(0.2),
            blurRadius: 4,
            offset: const Offset(4, 8), // Shadow position
          ),
        ],
      ),
      child: isMobile
          ? Center(
              child: Text(
                'SALE',
                style: TextStyles.interMedium
                    .copyWith(color: ColorName.red, fontSize: 30),
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SALE',
                  style: TextStyles.interMedium
                      .copyWith(color: ColorName.red, fontSize: 10.sp),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'SALE',
                  style: TextStyles.interMedium
                      .copyWith(color: ColorName.red, fontSize: 10.sp),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'SALE',
                  style: TextStyles.interMedium
                      .copyWith(color: ColorName.red, fontSize: 10.sp),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'SALE',
                  style: TextStyles.interMedium
                      .copyWith(color: ColorName.red, fontSize: 10.sp),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'SALE',
                  style: TextStyles.interMedium
                      .copyWith(color: ColorName.red, fontSize: 10.sp),
                )
              ],
            ),
    );
  }
}
