import 'package:flutter/material.dart';

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
        backgroundColor: const Color(0xff00000000),
      ),
      body: const Column(children: [
        Row(children: [
          Expanded(
            child: InputContainer(),
          ),
          Expanded(
            child: InputContainer(),
          ),
        ]),
        Expanded(
          child: InputContainer(),
        ),
        Row(children: [
          Expanded(
            child: InputContainer(),
          ),
          Expanded(
            child: InputContainer(),
          ),
        ]),
      ]),
    );
  }
}

class InputContainer extends StatelessWidget {
  const InputContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: const Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
