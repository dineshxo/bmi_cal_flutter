import 'package:flutter/material.dart';

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
          size: 100.0,
        ),
        Text(
          label,
          style: const TextStyle(
              fontSize: 20.0,
              color: Color.fromARGB(255, 114, 113, 113),
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
