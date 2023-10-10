import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:xtendly_exam/generated/assets.gen.dart';
import 'package:xtendly_exam/generated/colors.gen.dart';
import 'package:xtendly_exam/presentation/widgets/nav_button.dart';
import 'package:xtendly_exam/presentation/widgets/seach_field.dart';
import 'package:xtendly_exam/utils/theme/text_styles.dart';

class DesktopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DesktopAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(76);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 20,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.images.heroBg.path),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Help',
                  style: TextStyles.interMedium.copyWith(fontSize: 10),
                ),
              ),
              Text('|', style: TextStyles.interMedium.copyWith(fontSize: 10)),
              TextButton(
                onPressed: () {},
                child: Text('Join Us',
                    style: TextStyles.interMedium.copyWith(fontSize: 10)),
              ),
              Text('|', style: TextStyles.interMedium.copyWith(fontSize: 10)),
              TextButton(
                onPressed: () {},
                child: Text('Sign In',
                    style: TextStyles.interMedium.copyWith(fontSize: 10)),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
        AppBar(
          leadingWidth: 100,
          leading: Container(
            padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
            child: Image.asset('images/brand-logo.png', width: 80),
          ),
          actions: [
            NavButton(title: 'HOME', fontSize: 3.sp),
            NavButton(title: 'NEW ARRIVAL', fontSize: 3.sp),
            NavButton(title: 'SHOP', fontSize: 3.sp),
            NavButton(title: 'LAST COLLECTION', fontSize: 3.sp),
            NavButton(title: 'MEN', fontSize: 3.sp),
            NavButton(title: 'WOMEN', fontSize: 3.sp),
            const SizedBox(width: 40),
            const SearchField(),
            const SizedBox(width: 20),
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
            const SizedBox(width: 50)
          ],
        ),
      ],
    );
  }
}
