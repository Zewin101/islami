import 'package:flutter/material.dart';
import 'package:islami/layout_screen/layout.dart';
import 'package:islami/screens/quranScreen/detailsScreen/detailsScreen.dart';
import 'package:islami/theme/mytheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami app',
      initialRoute:LayoutScreen.routeName ,
      routes: {
        LayoutScreen.routeName:(context) =>  LayoutScreen(),
        DetailsScreen.routeName:(context) =>  DetailsScreen(),
      },
      theme: MyTheme.LightTheme,
      darkTheme: MyTheme.DarkTheme,
      themeMode: ThemeMode.light,

    );
  }
}

