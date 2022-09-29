import 'package:bmi/utils/app_colors.dart';
import 'package:bmi/utils/text_styles.dart';
import 'package:flutter/material.dart';

Future<void> showMyDialog(BuildContext context, String text) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      backgroundColor: AppColors.cardColor,
      title: const Text('BMI result', style: TextStyles.whiteText),
      content: Text(text, style: TextStyles.greyText),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    ),
  );
}
