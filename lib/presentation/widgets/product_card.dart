import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xtendly_exam/generated/colors.gen.dart';
import 'package:xtendly_exam/data/models/product_model.dart';
import 'package:xtendly_exam/utils/theme/text_styles.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.product,
    super.key,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isMobile = width <= 600;

    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset(product.imagePath),
              Positioned(
                top: 12.w,
                right: 0,
                child: Transform.translate(
                  offset: Offset(isMobile ? 10 : 40, 0),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.w,
                      vertical: 2.w,
                    ),
                    color: ColorName.ivory,
                    child: Text(
                      '15% OFF',
                      style: TextStyles.interRegular.copyWith(
                          color: ColorName.white, fontSize: isMobile ? 8 : 14),
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyles.interBold.copyWith(
                    fontSize: isMobile ? 15 : 18,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  product.description,
                  style: TextStyles.interRegular.copyWith(
                    fontSize: isMobile ? 15 : 18,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
