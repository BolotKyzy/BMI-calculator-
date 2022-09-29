import 'package:bmi/components/removeAddButton.dart';
import 'package:bmi/utils/text_styles.dart';
import 'package:flutter/material.dart';

class WeightAndAgeWidgets extends StatelessWidget {
  WeightAndAgeWidgets(
      {Key? key,
      required this.text,
      required this.currentValue,
      required this.onTap})
      : super(key: key);
  void Function(dynamic) onTap;
  final String text;
  int currentValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: TextStyles.greyText),
        Text(currentValue.toString(), style: TextStyles.whiteText),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RemoveAddButton(
                icon: Icons.remove, onTap: onTap, currentValue: currentValue),
            const SizedBox(width: 20),
            RemoveAddButton(
                icon: Icons.add, onTap: onTap, currentValue: currentValue)
          ],
        )
      ],
    );
  }
}
