import 'package:bmi_cal/constants.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'pages/Input_Page.dart';

void main() {
  runApp(const HomePage());
}

// void main() => runApp(
//       DevicePreview(
//         builder: (context) => HomePage(), // Wrap your app
//       ),
//     );

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      home: const InputPage(),
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: 'Montserrat'),
          bodyMedium: TextStyle(fontFamily: 'Montserrat'),
          titleLarge:
              TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
        ),
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
        sliderTheme: SliderTheme.of(context).copyWith(
            inactiveTrackColor: kInactiveInputColor,
            activeTrackColor: const Color.fromARGB(255, 170, 103, 26),
            thumbColor: const Color(0XffFB8500),
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15),
            overlayColor: const Color(0X29FB8500)),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
