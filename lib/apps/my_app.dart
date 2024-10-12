import 'package:flutter/material.dart';
import 'package:todolist_2/apps/my_app_2.dart';
import 'package:todolist_2/pages/bt01/bt01.dart';
import 'package:todolist_2/pages/bt02/bt02.dart';
import 'package:todolist_2/pages/bt03/bt03.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Bt03(),
    );
  }
}
