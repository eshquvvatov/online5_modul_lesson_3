import 'package:flutter/material.dart';
import 'package:online5_modul_lesson_3/pages/home_page.dart';

import 'Darsdagi_qushimcha_vazifa_ui/dars_ui.dart';
import 'Darsdagi_qushimcha_vazifa_ui/get_start_page.dart';
import 'Darsdagi_qushimcha_vazifa_ui/login_page.dart';
import 'home_task/home_task.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(scaffoldBackgroundColor:Colors.black),
      debugShowCheckedModeBanner: false,
      home: DarsUI(),
      routes: {
        HomePage.id:(context)=>HomePage(),
      },
    );
  }
}
