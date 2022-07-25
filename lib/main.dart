import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ui_example/pages/intro/intro_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {IntroPage.routeName: (context) => const IntroPage()},
      initialRoute: IntroPage.routeName,
    );
  }
}
