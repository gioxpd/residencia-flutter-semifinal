// ignore_for_file: unused_import

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:teste_1/home_page.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teste_1/login_page.dart';


  logar(BuildContext context, email,senha) async {

  LoginPage loginTela = LoginPage();
  
  var url = Uri.parse('https://apiloomi.onrender.com/login/');
  var response = await http.post(url,
    body: {
      'username': email,
      'password': senha
      },
    );
    if(response.statusCode == 200){
      
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
      String token = json.decode(response.body)["user_id"];
      //postResquest(token);
      //deleteResquest(token);
      //TelaHome.getResquest();
      //putResquest();
    }else{
      print('ERRO');
    
    }
  }
