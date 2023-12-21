import 'package:bmi_cal/components/bottom_button.dart';
import 'package:bmi_cal/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {super.key,
      required this.bmi,
      required this.bmiStatus,
      required this.bmiDescription,
      required this.bmiStatusColor});

  final double bmi;
  final String bmiStatus;
  final String bmiDescription;
  final Color bmiStatusColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // title: const Text(
      //   'BMI Calculator',
      //   ),
      // ),
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    height: 180,
                    margin: const EdgeInsets.all(20.0),
                    // decoration: BoxDecoration(
                    //   color: kActiveInputColor,
                    //   borderRadius: BorderRadius.circular(20.0),
                    // ),
                    child: const Center(
                      child: Text('Results', style: kResultsTitle),
                    )),
              ),
              Expanded(
                flex: 5,
                child: Container(
                    height: 180,
                    margin: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: kActiveInputColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            bmiStatus.toUpperCase(),
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: bmiStatusColor),
                          ),
                          Text(
                            bmi.toStringAsFixed(1),
                            style: kBMIValueText,
                          ),
                          Text(
                            bmiDescription,
                            style: kBottomText,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    )),
              ),
              BottomButton(
                action: () {
                  Navigator.pop(context);
                },
                title: 'Home',
              ),
            ]),
      ),
    );
  }
}
