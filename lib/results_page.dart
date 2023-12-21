import 'package:bmi_cal/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  final double bmi = 25.5;

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
                      child: Text('Results.', style: kResultsTitle),
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
                          Text('Overweight'),
                          Text(
                            bmi.toString(),
                            style: kBMIValueText,
                          ),
                          Text(
                              'You have a higher than normal body weight. Try to exercise more! ')
                        ],
                      ),
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 80.0,
                  width: double.infinity,
                  margin: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: kBottomContainerColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Center(
                    child: Text('Home', style: kBottomButtonText),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
