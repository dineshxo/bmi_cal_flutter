import 'package:flutter/material.dart';

class InputContainer extends StatelessWidget {
  const InputContainer({
    super.key,
    required this.inputChild,
    required this.color,
    required this.onPress,
  });

  final Widget inputChild;
  final Color color;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress(),
      child: Container(
        height: 180,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: inputChild,
      ),
    );
  }
}
