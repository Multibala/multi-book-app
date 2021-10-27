import 'package:flutter/material.dart';
import 'package:multi-book-app/pages/login_screen.dart';
import 'package:multi-book-app/pages/main_screen.dart';


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

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue.shade300,
        dividerColor: Colors.black,
      ),
      title: title,
      home: creatorProfilePage(),
    );
  }
}
