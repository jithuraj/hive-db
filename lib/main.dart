import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_db/hive_screen.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box box;

void main() async {
  runApp(MyApp());
  await Hive.initFlutter();
  box = await Hive.openBox('testBox');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HiveScreen(),
    );
  }
}
