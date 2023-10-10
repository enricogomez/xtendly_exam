import 'package:flutter/material.dart';
import 'package:xtendly_exam/generated/colors.gen.dart';
import 'package:xtendly_exam/utils/theme/text_styles.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon, color: ColorName.darkGrey),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyles.interRegular.copyWith(
                color: ColorName.darkGrey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
