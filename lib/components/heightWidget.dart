import 'package:bmi/utils/app_colors.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:bmi/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeightWidget extends StatelessWidget {
  HeightWidget({Key? key, required this.currentHeight, required this.onChanged})
      : super(key: key);

  double currentHeight;
  void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Card(
      color: AppColors.cardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(AppText.heightText, style: TextStyles.greyText),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(currentHeight.round().toString(),
                  style: TextStyles.whiteText),
              const Text(AppText.cm, style: TextStyles.cmStyle),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              width: double.infinity,
              child: CupertinoSlider(
                activeColor: AppColors.whiteColor,
                thumbColor: AppColors.buttonColor,
                value: currentHeight,
                max: 250,
                divisions: 10,
                onChanged: onChanged,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
