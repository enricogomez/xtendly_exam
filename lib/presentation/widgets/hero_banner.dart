import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xtendly_exam/generated/assets.gen.dart';
import 'package:xtendly_exam/generated/colors.gen.dart';
import 'package:xtendly_exam/utils/theme/text_styles.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return LayoutBuilder(builder: (ctx, constraints) {
      if (constraints.maxWidth <= 600) {
        return Stack(
          children: [
            Positioned(
              child: Container(
                width: double.infinity,
                height: height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/mobile-hero.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              top: (height * 0.05),
              right: 0,
              child: Assets.images.heroItem3.image(width: width * 0.6),
            ),
            Positioned(
              top: (height * 0.2),
              left: 10,
              child: Assets.images.heroItem2.image(width: width * 0.5),
            ),
            Positioned(
              top: (height * 0.5),
              right: 10,
              child: Assets.images.heroItem1.image(width: width * 0.55),
            ),
            Positioned(
              top: height * 0.5 - 20,
              left: (width * 0.5) - 60,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide.none,
                  backgroundColor: ColorName.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  elevation: 10,
                  shadowColor: ColorName.black,
                ),
                child: Text(
                  'Shop Now',
                  style: TextStyles.interMedium.copyWith(fontSize: 20),
                ),
                onPressed: () {},
              ),
            ),
          ],
        );
      } else {
        return Stack(
          children: [
            Positioned(
              child: Container(
                width: double.infinity,
                height: height + 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/hero-bg.png"),
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              top: (height * 0.5) - 250,
              left: 0,
              child: Assets.images.heroItem1.image(width: width / 4),
            ),
            Positioned(
              top: (height * 0.5) - 350,
              right: 0,
              child: Assets.images.heroItem3.image(width: width / 2),
            ),
            Positioned(
              top: (height * 0.5) - 200,
              left: width / 4 - 50,
              child: Assets.images.heroItem2.image(width: width / 4 + 100),
            ),
            Positioned(
              bottom: 200,
              left: (width * 0.5) - 50,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide.none,
                  backgroundColor: ColorName.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  elevation: 10,
                  shadowColor: ColorName.black,
                ),
                child: Text(
                  'Shop Now',
                  style: TextStyles.interMedium.copyWith(fontSize: 5.sp),
                ),
                onPressed: () {},
              ),
            ),
          ],
        );
      }
    });
  }
}
