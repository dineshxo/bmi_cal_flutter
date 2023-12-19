// ignore: file_names
import 'package:flutter/material.dart';

import 'constants.dart';
import 'icon_content.dart';
import 'input_container.dart';

enum GenderType { male, female }

GenderType selectedGender = GenderType.male;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        // ignore: use_full_hex_values_for_flutter_colors
        backgroundColor: const Color(0xff00000000),
      ),
      body: Column(
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
                    ? activeInputColor
                    : inactiveInputColor,
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
                    ? activeInputColor
                    : inactiveInputColor,
              ),
            ),
          ]),
          Expanded(
            child: Container(
              height: 200,
              margin: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  margin: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  margin: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 80.0,
            width: double.infinity,
            margin: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: bottomContainerColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
          )
        ],
      ),
    );
  }
}
