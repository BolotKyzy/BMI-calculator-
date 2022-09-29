import 'package:bmi/utils/app_colors.dart';
import 'package:bmi/utils/text_styles.dart';
import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  GenderWidget(
      {Key? key,
      required this.icon,
      required this.text,
      required this.isMale,
      required this.onToggle})
      : super(key: key);

  final IconData icon;
  final String text;
  bool isMale;
  void Function(dynamic) onToggle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            text == 'MALE' ? onToggle(true) : onToggle(false);
          },
          color: text == 'MALE' && isMale
              ? AppColors.buttonColor
              : text == 'FEMALE' && !isMale
                  ? AppColors.buttonColor
                  : AppColors.whiteColor,
          iconSize: 80,
          icon: Icon(
            icon,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(text, style: TextStyles.greyText)
      ],
    );
  }
}
