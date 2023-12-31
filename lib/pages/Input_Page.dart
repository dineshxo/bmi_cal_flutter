// ignore: file_names
import 'package:bmi_cal/bmi_calculator.dart';
import 'package:bmi_cal/components/bottom_button.dart';
import 'package:bmi_cal/components/icon_content.dart';
import 'package:bmi_cal/pages/results_page.dart';
import 'package:bmi_cal/components/roundiconbutton.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

import '../components/input_container.dart';

enum GenderType { male, female }

GenderType selectedGender = GenderType.male;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 80;
  int weight = 50;
  int age = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        // ignore: use_full_hex_values_for_flutter_colors
        backgroundColor: const Color(0xff00000000),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(children: [
            Expanded(
              child: InputContainer(
                onPress: () {
                  setState(() {
                    selectedGender = GenderType.male;
                  });
                },
                inputChild: const IconContent(
                  icon: Icons.male,
                  label: 'Male',
                ),
                color: selectedGender == GenderType.male
                    ? kActiveInputColor
                    : kInactiveInputColor,
              ),
            ),
            Expanded(
              child: InputContainer(
                onPress: () {
                  setState(() {
                    selectedGender = GenderType.female;
                  });
                },
                inputChild:
                    const IconContent(icon: Icons.female, label: 'Female'),
                color: selectedGender == GenderType.female
                    ? kActiveInputColor
                    : kInactiveInputColor,
              ),
            ),
          ]),
          Expanded(
              child: InputContainerBottom(
            color: kInputContainerColor,
            inputChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Height',
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kNumberTextStyle,
                    ),
                    const Text(
                      'cm',
                      style: kLabelTextStyle,
                    ),
                  ],
                ),
                Slider(
                    value: height.toDouble(),
                    min: 80,
                    max: 250,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    }),
              ],
            ),
          )),
          Row(
            children: [
              Expanded(
                child: InputContainerBottom(
                    inputChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Weight',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: Icons.remove,
                                onPressed: () {
                                  if (weight > 20) {
                                    setState(() {
                                      weight--;
                                    });
                                  }
                                }),
                            const SizedBox(
                              width: 15.0,
                            ),
                            RoundIconButton(
                                icon: Icons.add,
                                onPressed: () {
                                  if (weight < 120) {
                                    setState(() {
                                      weight++;
                                    });
                                  }
                                }),
                          ],
                        )
                      ],
                    ),
                    color: kActiveInputColor),
              ),
              Expanded(
                child: InputContainerBottom(
                    inputChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Age',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: Icons.remove,
                                onPressed: () {
                                  if (age > 10) {
                                    setState(() {
                                      age--;
                                    });
                                  }
                                }),
                            const SizedBox(
                              width: 15.0,
                            ),
                            RoundIconButton(
                                icon: Icons.add,
                                onPressed: () {
                                  if (age < 120) {
                                    setState(() {
                                      age++;
                                    });
                                  }
                                }),
                          ],
                        )
                      ],
                    ),
                    color: kActiveInputColor),
              ),
            ],
          ),
          BottomButton(
              action: () {
                BmiCalculator cal =
                    BmiCalculator(height: height, weight: weight);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ResultsPage(
                        bmi: cal.calculateBMI(),
                        bmiDescription: cal.getDescription(),
                        bmiStatus: cal.getResult(),
                        bmiStatusColor: cal.getStatusColor(),
                      );
                    },
                  ),
                );
              },
              title: 'Calculate BMI')
        ],
      ),
    );
  }
}
