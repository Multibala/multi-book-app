import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multi-book-app/pages/profileScreenCreator.dart';
import 'package:multi-book-app/profileScreenWidget/profile_widget.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

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
