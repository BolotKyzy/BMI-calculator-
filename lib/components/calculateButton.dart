import 'dart:developer';

import 'package:bmi/utils/app_colors.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:bmi/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({Key? key, required this.onTap}) : super(key: key);
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        color: AppColors.buttonColor,
        child: const Center(
            child: Text(
          AppText.calculate,
          style: TextStyle(fontSize: 26),
        )),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context, String text) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(AppText.appTitle),
        content: Center(
          child: Text(
            text,
            style: TextStyles.whiteText,
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Approve'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
