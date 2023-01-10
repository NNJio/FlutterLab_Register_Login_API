import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/register_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RegisterPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  RegisterModel registerModel = RegisterModel(
    email: '',
    name: '',
    password: '',
    phone: '',
  );
  late String inputEmail;
  late String inputPassword;
  late String inputName;
  late String inputPhone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.amber[100],
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Email'),
              TextFormField(
                validator: MultiValidator(
                  [
                    RequiredValidator(errorText: 'this field is required'),
                    EmailValidator(errorText: 'This not email'),
                  ],
                ),
                keyboardType: TextInputType.emailAddress,
                onSaved: (inputEmail) {
                  registerModel.email = inputEmail!;
                },
              ),
              const Text('Password'),
              TextFormField(
                validator: MultiValidator(
                  [
                    RequiredValidator(errorText: 'this field is required'),
                  ],
                ),
                obscureText: true,
                onSaved: (inputPassword) {
                  registerModel.password = inputPassword!;
                },
              ),
              const Text('Name'),
              TextFormField(
                validator:
                    RequiredValidator(errorText: 'this field is required'),
                onSaved: (inputName) {
                  registerModel.name = inputName!;
                },
              ),
              const Text('Phone'),
              TextFormField(
                validator:
                    RequiredValidator(errorText: 'this field is required'),
                onSaved: (inputPhone) {
                  registerModel.phone = inputPhone!;
                },
              ),
              GestureDetector(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState?.save();
                    print(
                        'Email = ${registerModel.email} \n Password = ${registerModel.password}\n Name = ${registerModel.name}\n Phone = ${registerModel.phone}');
                    // formKey.currentState?.reset();
                  }
                },
                child: Container(
                  width: 0.9.sw,
                  height: 0.15.sw,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // ElevatedButton(
                  //   child: const Text('Register'),
                  //   onPressed: () {},
                  // ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
