import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:laundaryapp/model/register.dart';
import 'package:http/http.dart'as http;

class SplashRegist extends ChangeNotifier{
  
}

checkUser(String Name,String Email,String Password) async {
  try {
    var response = await http.post(
      Uri.parse('https://laundry-app-backend-mwlf.onrender.com/api/register'),
      body: {
        
    "userName": Name,
    "email":Email ,
    "password": Password,
    

      },
    );
    return Data.fromJson(jsonDecode(response.body));
  } catch (e) {
    throw e;
  }
}