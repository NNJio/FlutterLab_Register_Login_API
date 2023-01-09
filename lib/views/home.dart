import 'package:flutter/material.dart';

import '../widgets/button_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  var buttonStyle = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  final String _re = 'Register';
  final String _log = 'Login';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Register&Login',style: buttonStyle,),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Spacer(flex: 40),
              ButtonWidget(re: _re, buttonStyle: buttonStyle),
              const Spacer(flex: 2),
              ButtonWidget(re: _log, buttonStyle: buttonStyle),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}

