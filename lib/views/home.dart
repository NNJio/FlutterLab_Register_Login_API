import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/register.dart';


import '../widgets/button_widget.dart';
import 'login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final _buttonStyle =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register&Login',
          style: _buttonStyle,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Spacer(flex: 40),
              ButtonWidget(
                page: const RegisterPage(),
                addIcon: const Icon(Icons.add),
                textButton: 'Register',
                buttonStyle: _buttonStyle,
              ),
              const Spacer(flex: 2),
              ButtonWidget(
                page: const LoginPage(),
                addIcon: const Icon(Icons.login_rounded),
                textButton: 'Login',
                buttonStyle: _buttonStyle,
              ),
              const Spacer(flex: 2),
              //! -----------------------

              //! -----------------------
            ],
          ),
        ),
      ),
    );
  }
}
