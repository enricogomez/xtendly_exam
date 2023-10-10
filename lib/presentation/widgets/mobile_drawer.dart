import 'package:flutter/material.dart';
import 'package:xtendly_exam/generated/assets.gen.dart';
import 'package:xtendly_exam/generated/colors.gen.dart';
import 'package:xtendly_exam/presentation/widgets/nav_button.dart';
import 'package:xtendly_exam/presentation/widgets/seach_field.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: ColorName.darkGrey,
            ),
            child: Center(
              child: Assets.images.brandLogo.image(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: SearchField(),
          ),
          const NavButton(title: 'HOME', fontSize: 16),
          const NavButton(title: 'NEW ARRIVAL', fontSize: 16),
          const NavButton(title: 'SHOP', fontSize: 16),
          const NavButton(title: 'LAST COLLECTION', fontSize: 16),
          const NavButton(title: 'MEN', fontSize: 16),
          const NavButton(title: 'WOMEN', fontSize: 16),
          const SizedBox(width: 40),
        ],
      ),
    );
  }
}
