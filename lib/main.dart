import 'package:flutter/material.dart';
import 'package:multi_book/pages/login_screen.dart';
import 'package:multi_book/pages/main_screen.dart';


void main() {
  runApp( MaterialApp(
    initialRoute: '/',
    routes:{
      '/':(context)=>  MainScreen(),
      '/login':(context)=>  LoginScreen(),
      '/profile':(context)=>  MainScreen(),
      '/wallet':(context)=>  MainScreen(),
      '/create':(context)=>  MainScreen(),

    },
  ));
}



