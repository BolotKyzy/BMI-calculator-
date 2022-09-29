import 'package:bmi/components/weightAndAgeWidgets.dart';
import 'package:bmi/components/genderWidget.dart';
import 'package:bmi/utils/app_colors.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget(
      {Key? key,
      required this.whatCard,
      required this.currentValue,
      required this.onTap})
      : super(key: key);
  final String whatCard;
  final dynamic currentValue;
  void Function(dynamic) onTap;

  Widget defineTheInnerCard() {
    if (whatCard == 'male') {
      return GenderWidget(
          icon: Icons.male,
          text: AppText.gendeMale,
          isMale: currentValue,
          onToggle: onTap);
    } else if (whatCard == 'female') {
      return GenderWidget(
          icon: Icons.female,
          text: AppText.genderFemale,
          isMale: currentValue,
          onToggle: onTap);
    } else if (whatCard == 'weight') {
      return WeightAndAgeWidgets(
          text: AppText.weightText, currentValue: currentValue, onTap: onTap);
    } else {
      return WeightAndAgeWidgets(
          text: AppText.ageText, currentValue: currentValue, onTap: onTap);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Card(
      color: AppColors.cardColor,
      child: defineTheInnerCard(),
    ));
  }
}
