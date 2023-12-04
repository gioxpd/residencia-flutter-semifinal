import 'package:flutter/material.dart';
import 'package:teste_1/app_controller.dart';
import 'package:teste_1/home_page.dart';
import 'package:teste_1/login_page.dart';


class AppWidget extends StatelessWidget{
  

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder( 
      animation: AppController.instance,
      builder: ( context,  child) {
      return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple,
      brightness: AppController.instance.isDartTheme ? 
      Brightness.dark : 
      Brightness.light),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        'home': (context) => HomePage(),
      },
    );
      },);
  }
}  
