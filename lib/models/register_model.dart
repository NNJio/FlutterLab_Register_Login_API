import 'dart:convert';

RegisterModel? registerFromJson(String str) => RegisterModel.fromJson(json.decode(str));

String registerToJson(RegisterModel? data) => json.encode(data!.toJson());

class RegisterModel {
    RegisterModel({
        required this.phone,
        required this.email,
        required this.password,
        required this.name,
    });

    String phone;
    String email;
    String password;
    String name;

    factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        phone: json["phone"],
        email: json["email"],
        password: json["password"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "phone": phone,
        "email": email,
        "password": password,
        "name": name,
    };
}
