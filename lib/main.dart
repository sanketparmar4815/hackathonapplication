import 'package:flutter/material.dart';
import 'package:hackathonapplication/features/HomeScreenMap.dart';
import 'package:hackathonapplication/utils/Palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme:Palette.lightTheme,
      home: Homescreenmap()

    );
  }
}
