import 'package:flutter/material.dart';
<<<<<<< HEAD
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
=======
import 'package:flutter/services.dart';
import 'package:multi-book-app/pages/profileScreenCreator.dart';
import 'package:multi-book-app/profileScreenWidget/profile_widget.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
>>>>>>> f28572222cc7c95d952021a4e2e47a0919d0e430

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
