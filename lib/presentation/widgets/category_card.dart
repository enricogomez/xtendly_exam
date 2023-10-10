import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xtendly_exam/generated/colors.gen.dart';
import 'package:xtendly_exam/data/models/category_model.dart';
import 'package:xtendly_exam/utils/theme/text_styles.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isMobile = width <= 600;

    return InkWell(
      onTap: () {},
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.asset(category.imagePath),
          Positioned(
            bottom: 50,
            child: Container(
              width: isMobile ? 100.w : 50.w,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                color: ColorName.grey,
              ),
              child: Text(
                category.name,
                style: TextStyles.interMedium
                    .copyWith(fontSize: isMobile ? 15.sp : 6.sp),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
