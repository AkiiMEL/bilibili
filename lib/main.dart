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
        textTheme: TextTheme(
          headline: TextStyle(color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold,),
          title: TextStyle(
            color: Color.fromARGB(255, 90, 90, 90),
            fontSize: 14.0,
          ),
          subtitle: TextStyle(
            color: Color.fromARGB(255, 183, 183, 182),
            fontSize: 12.0,
          ),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
          color: Color.fromARGB(255, 44, 45, 46),
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 26, 27, 28),
        indicatorColor: Color.fromARGB(255, 248, 116, 153),
        dividerColor: Color.fromARGB(255, 246, 245, 246),
        textTheme: TextTheme(
          headline: TextStyle(color: Color.fromARGB(255, 92, 93, 94), fontSize: 15.0, fontWeight: FontWeight.bold,),
          title: TextStyle(
            color: Color.fromARGB(255, 60, 61, 62),
            fontSize: 14.0,
          ),
          subtitle: TextStyle(
            color: Color.fromARGB(255, 183, 183, 182),
            fontSize: 12.0,
          ),
        ),
      ),
      home: BiliInitialView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
