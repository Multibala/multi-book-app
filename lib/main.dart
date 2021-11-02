import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multi_book/pages/profileScreenCreator.dart';
import 'package:multi_book/themes.dart';
import 'package:multi_book/utils/creator_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Creator Profile';

  @override
  Widget build(BuildContext context) {
    final creator = creatorPreferences.myCreator;

    return ThemeProvider(
      initTheme: creator.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      child: Builder(
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeProvider.of(context),
          title: title,
          home: creatorProfilePage(),
        ),
      ),
    );
  }
}
