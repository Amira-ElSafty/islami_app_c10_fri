import 'package:flutter/material.dart';
import 'package:flutter_app_islami_c10_fri/home/hadeth/hadeth_details_screen.dart';
import 'package:flutter_app_islami_c10_fri/home/home_screen.dart';
import 'package:flutter_app_islami_c10_fri/home/quran/sura_details_screen.dart';
import 'package:flutter_app_islami_c10_fri/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetaillsScreen.routeName: (context) => SuraDetaillsScreen(),
        HadethDetaillsScreen.routeName: (context) => HadethDetaillsScreen(),
      },
      theme: MyTheme.lightTheme,
    );
  }
}
