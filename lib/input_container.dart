import 'package:flutter/material.dart';

const inputContainerColor = Color(0xFF1D1E33);

class InputContainer extends StatelessWidget {
  const InputContainer({
    super.key,
    required this.inputChild,
  });

  final Widget inputChild;
  final Color color = inputContainerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: inputChild,
    );
  }
}
