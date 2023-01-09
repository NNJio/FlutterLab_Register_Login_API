// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required page,
    required Icon addIcon,
    required String textButton,
    required this.buttonStyle,
  })  : _page = page,
        _addIcon = addIcon,
        _re = textButton,
        super(key: key);
  
  final _page;
  final Icon _addIcon;
  final String _re;
  final TextStyle buttonStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton.icon(
        onPressed: () {
          Get.to(_page);
        },
        icon: _addIcon,
        label: Text(_re, style: buttonStyle),
      ),
    );
  }
}
