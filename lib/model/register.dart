import 'package:meta/meta.dart';
import 'dart:convert';



class Data {
    final String userName;
    final String email;
    final String password;
    
    

    Data({
        required this.userName,
        required this.email,
        required this.password,
        
        
    });

    factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        userName: json["userName"],
        email: json["email"],
        password: json["password"],
        
        
    );

    Map<String, dynamic> toJson() => {
        "userName": userName,
        "email": email,
        "password": password,
        
       
    };
}
