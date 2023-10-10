import 'package:flutter/material.dart';
import 'package:xtendly_exam/generated/assets.gen.dart';
import 'package:xtendly_exam/generated/colors.gen.dart';
import 'package:xtendly_exam/presentation/widgets/contact_item.dart';
import 'package:xtendly_exam/utils/theme/text_styles.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyTexts = List.generate(
      6,
      (idx) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Text(
          'Lorem ipsum',
          style: TextStyles.interRegular.copyWith(
            fontSize: 15,
            color: ColorName.darkGrey,
          ),
        ),
      ),
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return Container(
            color: ColorName.beige,
            padding: const EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 70,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 130,
                        height: 130,
                        child: Assets.images.footerLogo.image(),
                      ),
                      const SizedBox(height: 50),
                      const ContactItem(
                        icon: Icons.share,
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      ),
                      const ContactItem(
                        icon: Icons.phone_android_outlined,
                        text: 'Lorem ipsum',
                      ),
                      const ContactItem(
                        icon: Icons.mail_outline,
                        text: 'Lorem ipsum dolor sit amet',
                      ),
                      const SizedBox(height: 10),
                      SizedBox(width: 200, child: Assets.images.socials.image())
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'COLLECTION',
                            style: TextStyles.interBold.copyWith(fontSize: 18),
                          ),
                          const SizedBox(height: 10),
                          ...dummyTexts
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'INFORMATION',
                            style: TextStyles.interBold.copyWith(fontSize: 18),
                          ),
                          const SizedBox(height: 10),
                          ...dummyTexts
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'MORE',
                            style: TextStyles.interBold.copyWith(fontSize: 18),
                          ),
                          const SizedBox(height: 10),
                          ...dummyTexts
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        } else {
          return Container(
            color: ColorName.beige,
            padding: const EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 70,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 130,
                        height: 130,
                        child: Assets.images.footerLogo.image(),
                      ),
                      const SizedBox(height: 30),
                      const ContactItem(
                        icon: Icons.share,
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      ),
                      const ContactItem(
                        icon: Icons.phone_android_outlined,
                        text: 'Lorem ipsum',
                      ),
                      const ContactItem(
                        icon: Icons.mail_outline,
                        text: 'Lorem ipsum dolor sit amet',
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                          width: 200, child: Assets.images.socials.image()),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          'COLLECTION',
                          style: TextStyles.interBold.copyWith(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          'INFORMATION',
                          style: TextStyles.interBold.copyWith(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          'MORE',
                          style: TextStyles.interBold.copyWith(fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
