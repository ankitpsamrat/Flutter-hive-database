import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //  hive directory path method

  Directory document = await getApplicationDocumentsDirectory();
  Hive.init(document.path);

   //  opens a new box called 'students'

  await Hive.openBox('students');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hive Database',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //

  final TextEditingController rollNoController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  Box? studentBox;

  @override
  void initState() {
    studentBox = Hive.box("students");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hive Database'),
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return Dialog(
                      child: Column(
                        children: [
                          TextField(
                            controller: rollNoController,
                          ),
                          TextField(
                            controller: nameController,
                          ),
                          TextButton(
                            onPressed: () {
                              studentBox?.put(
                                rollNoController.text,
                                nameController.text,
                              );
                              rollNoController.clear();
                              nameController.clear();
                              Navigator.pop(context);
                            },
                            child: const Text("submit"),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Text("Add Student"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return Dialog(
                      child: Column(
                        children: [
                          TextField(
                            controller: rollNoController,
                          ),
                          TextField(
                            controller: nameController,
                          ),
                          TextButton(
                            onPressed: () {
                              studentBox?.put(
                                rollNoController.text,
                                nameController.text,
                              );
                              rollNoController.clear();
                              nameController.clear();
                              Navigator.pop(context);
                            },
                            child: const Text("submit"),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Text("Update Student"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return Dialog(
                      child: Column(
                        children: [
                          TextField(
                            controller: rollNoController,
                          ),
                          TextButton(
                            onPressed: () {
                              studentBox?.delete(rollNoController.text);
                              rollNoController.clear();
                              Navigator.pop(context);
                            },
                            child: const Text("submit"),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Text("Delete Student"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return Dialog(
                      child: Column(
                        children: [
                          TextField(
                            controller: rollNoController,
                          ),
                          TextButton(
                            onPressed: () {
                              print(
                                studentBox?.get(rollNoController.text),
                              );
                              rollNoController.clear();
                              Navigator.pop(context);
                            },
                            child: const Text("submit"),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Text("Show Student"),
            ),
          ],
        ),
      ),
    );
  }
}
