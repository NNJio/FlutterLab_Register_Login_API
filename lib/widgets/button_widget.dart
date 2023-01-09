import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required String re,
    required this.buttonStyle,
  }) : _re = re, super(key: key);

  final String _re;
  final TextStyle buttonStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.add),
        label: Text(_re, style: buttonStyle),
      ),
    );
  }
}