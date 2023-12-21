import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.action,
    required this.title,
  });

  final Function action;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        action();
      },
      child: Container(
        height: 80.0,
        width: double.infinity,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(title, style: kBottomButtonText),
        ),
      ),
    );
  }
}
