// import 'dart:io';
import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
import 'package:hive_database/pages/home_page.dart';
// import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //  hive directory path method

  // Directory document = await getApplicationDocumentsDirectory();
  // Hive.init(document.path);

  //  opens a new box called 'students'

  // await Hive.openBox('students');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hive Database',
      home: HomePage(),
    );
  }
}
