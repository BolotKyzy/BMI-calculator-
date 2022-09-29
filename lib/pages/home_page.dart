import 'dart:developer';

import 'package:bmi/components/calculateButton.dart';
import 'package:bmi/components/heightWidget.dart';
import 'package:bmi/pages/result_alert.dart';
import 'package:bmi/utils/app_colors.dart';
import 'package:bmi/utils/app_text.dart';
import 'package:flutter/material.dart';

import '../components/cardWidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _currentGender = true;
  double _currentHeight = 180.0;
  int _currentWeight = 60;
  int _currentAge = 28;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          title: const Text(
            AppText.appTitle,
            style: TextStyle(fontSize: 24),
          ),
          backgroundColor: AppColors.backgroundColor,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              Expanded(
                  child: Row(
                children: [
                  CardWidget(
                    whatCard: 'male',
                    currentValue: _currentGender,
                    onTap: (value) {
                      setState(() {
                        _currentGender = value;
                      });
                    },
                  ),
                  const SizedBox(width: 20),
                  CardWidget(
                    whatCard: 'female',
                    currentValue: _currentGender,
                    onTap: (value) {
                      setState(() {
                        _currentGender = value;
                      });
                    },
                  ),
                ],
              )),
              const SizedBox(height: 20),
              HeightWidget(
                  currentHeight: _currentHeight,
                  onChanged: (value) {
                    setState(() {
                      _currentHeight = value;
                    });
                  }),
              const SizedBox(height: 20),
              Expanded(
                  child: Row(
                children: [
                  CardWidget(
                    whatCard: 'weight',
                    currentValue: _currentWeight,
                    onTap: (value) {
                      setState(() {
                        _currentWeight = value;
                      });
                    },
                  ),
                  SizedBox(width: 20),
                  CardWidget(
                    whatCard: 'age',
                    currentValue: _currentAge,
                    onTap: (value) {
                      setState(() {
                        _currentAge = value;
                      });
                    },
                  ),
                ],
              )),
            ],
          ),
        ),
        bottomNavigationBar: CalculateButton(
          onTap: () {
            final result = _currentWeight /
                ((_currentHeight / 100) * (_currentHeight / 100));
            if (result <= 18.4) {
              final res = result.round();
              showMyDialog(context, 'You are thin. Your result is $res');
            } else if (result <= 18.5 && result <= 24.9) {
              final res = result.round();

              showMyDialog(context, 'You are normal. Your result is $res');
            } else if (result >= 25) {
              final res = result.round();

              showMyDialog(context, 'You are fat. Your result is $res');
            } else {
              showMyDialog(context, 'error');
            }
          },
        ));
  }
}
