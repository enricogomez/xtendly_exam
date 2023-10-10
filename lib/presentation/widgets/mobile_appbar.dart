import 'package:flutter/material.dart';
import 'package:xtendly_exam/generated/assets.gen.dart';
import 'package:xtendly_exam/generated/colors.gen.dart';
import 'package:xtendly_exam/utils/theme/text_styles.dart';

class MobileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MobileAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(66);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 10,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.images.heroBg.path),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        AppBar(
          iconTheme: const IconThemeData(color: ColorName.darkGrey),
          centerTitle: true,
          title: Container(
            padding: const EdgeInsets.all(10),
            child: Image.asset('images/brand-logo.png', width: 45),
          ),
          actions: [
            Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SizedBox(
                    width: 20,
                    child: Assets.images.cartIcon.image(),
                  ),
                ),
                Positioned(
                  right: 4,
                  bottom: 4,
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: const BoxDecoration(
                      color: ColorName.grey,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '0',
                      style: TextStyles.interRegular.copyWith(
                        fontSize: 8,
                      ),
                    ),
                  ),
                )
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: SizedBox(
                width: 25,
                child: Assets.images.starIcon.image(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
