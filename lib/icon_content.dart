import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
    fontSize: 20.0,
    color: Color.fromARGB(255, 114, 113, 113),
    fontWeight: FontWeight.bold);

const iconSize = 80.0;

class IconContent extends StatelessWidget {
  const IconContent({
    super.key,
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label, style: labelTextStyle)
      ],
    );
  }
}
