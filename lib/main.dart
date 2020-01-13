import 'package:flutter/material.dart';

import 'package:bilibili/views/bili_initial_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          color: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        indicatorColor: Color.fromARGB(255, 248, 116, 153),
        dividerColor: Color.fromARGB(255, 246, 245, 246),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
          color: Color.fromARGB(255, 44, 45, 46),
        ),
        textTheme: TextTheme(
          headline: TextStyle(
            color: Color.fromARGB(255, 141, 141, 141),
          ),
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 26, 27, 28),
        indicatorColor: Color.fromARGB(255, 248, 116, 153),
        dividerColor: Color.fromARGB(255, 246, 245, 246),
      ),
      home: BiliInitialView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
