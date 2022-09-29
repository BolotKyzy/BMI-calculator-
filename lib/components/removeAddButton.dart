import 'dart:math';

import 'package:bmi/utils/app_colors.dart';
import 'package:flutter/material.dart';

class RemoveAddButton extends StatelessWidget {
  RemoveAddButton(
      {Key? key,
      required this.icon,
      required this.onTap,
      required this.currentValue})
      : super(key: key);
  final IconData icon;
  void Function(dynamic) onTap;
  int currentValue;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.incrDecrButtoncolor,
      onPressed: () {
        icon == Icons.remove ? onTap(--currentValue) : onTap(++currentValue);
      },
      child: Icon(
        icon,
        color: AppColors.whiteColor,
        size: 35,
      ),
    );
  }
}
